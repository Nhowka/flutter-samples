import 'dart:math';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';
import 'package:mvu_layer/mvu.dart';

import '../../../data/repositories/continent/continent_repository.dart';
import '../../../data/repositories/itinerary_config/itinerary_config_repository.dart';
import '../../../domain/models/continent/continent.dart';
import '../../../domain/models/itinerary_config/itinerary_config.dart';
import '../../../utils/loadable.dart';
import '../../../utils/result.dart' as rs;

part 'search_form.freezed.dart';

@freezed
class SearchFormModel with _$SearchFormModel {
  const SearchFormModel._();

  const factory SearchFormModel({
    @Default(LoadableValue.loading()) LoadableValue<List<Continent>> continents,
    String? selectedContinent,
    DateTimeRange? dateRange,
    @Default(0) int guests,
    @Default(false) bool updatingItinerary,
    @Default(true) bool loadingItinerary,
  }) = _SearchFormModel;

  bool get valid =>
      guests > 0 && selectedContinent != null && dateRange != null;
}

@freezed
sealed class SearchFormMessages with _$SearchFormMessages {
  const factory SearchFormMessages.setDateRange(DateTimeRange? dateRange) =
      _SetDateRange;

  const factory SearchFormMessages.setSelectedContinent(String? continent) =
      _SetSelectedContinent;

  const factory SearchFormMessages.setGuests(int quantity) = _SetGuests;

  const factory SearchFormMessages.loadItineraryConfig(
    rs.Result<ItineraryConfig> config,
  ) = _LoadItineraryConfig;

  const factory SearchFormMessages.loadContinents(
    rs.Result<List<Continent>> continents,
  ) = _LoadContinents;

  const factory SearchFormMessages.load() = _Load;

  const factory SearchFormMessages.updateItinerary({
    required void Function() onSuccess,
    required void Function(Exception error) onFailure,
  }) = _UpdateItinerary;

  const factory SearchFormMessages.successUpdateItinerary(
    void Function() handler,
  ) = _SuccessUpdateItinerary;

  const factory SearchFormMessages.failureUpdateItinerary(
    Exception error,
    void Function(Exception error) handler,
  ) = _FailureUpdateItinerary;
}

class SearchFormProcessor
    extends MVUProcessor<SearchFormModel, SearchFormMessages> {
  final ContinentRepository _continentRepository;
  final ItineraryConfigRepository _itineraryConfigRepository;
  final _log = Logger('SearchFormProcessor');

  SearchFormProcessor({
    required ContinentRepository continentRepository,
    required ItineraryConfigRepository itineraryConfigRepository,
  }) : _continentRepository = continentRepository,
       _itineraryConfigRepository = itineraryConfigRepository;

  /// Helper sets for testing
  set selectedContinent(String? continent) {
    dispatch(SearchFormMessages.setSelectedContinent(continent));
  }

  set guests(int quantity) {
    dispatch(SearchFormMessages.setGuests(quantity));
  }

  set dateRange(DateTimeRange? dateRange) {
    dispatch(SearchFormMessages.setDateRange(dateRange));
  }

  @override
  (SearchFormModel, Cmd<SearchFormMessages>) init() => (
    SearchFormModel(),
    Cmd.ofMsg(SearchFormMessages.load()),
  );

  @override
  (SearchFormModel, Cmd<SearchFormMessages>) update(
    SearchFormMessages msg,
    SearchFormModel model,
  ) {
    _log.info(msg);
    return switch (msg) {
    _SetDateRange(:final dateRange) => (
      model.copyWith(dateRange: dateRange),
      Cmd.none(),
    ),
    _SetSelectedContinent(:final continent) => (
      model.copyWith(selectedContinent: continent),
      Cmd.none(),
    ),
    _SetGuests(:final quantity) => (
      model.copyWith(guests: max(quantity, 0)),
      Cmd.none(),
    ),
    _LoadItineraryConfig(:final config) => switch (config) {
      rs.Ok<ItineraryConfig>(:final value) => (
        model.copyWith(
          loadingItinerary: false,
          selectedContinent: value.continent,
          guests: value.guests ?? 0,
          dateRange: switch (value) {
            ItineraryConfig(
              :final DateTime startDate,
              :final DateTime endDate,
            ) =>
              DateTimeRange(start: startDate, end: endDate),
            _ => null,
          },
        ),
        Cmd.none(),
      ),
      rs.Error<ItineraryConfig>() => (
        model.copyWith(loadingItinerary: false),
        Cmd.none(),
      ),
    },
    _LoadContinents(continents: rs.Ok(value: final continents)) => (
      model.copyWith(continents: LoadableValue.loaded(continents)),
      Cmd.none(),
    ),
    _UpdateItinerary(:final onFailure, :final onSuccess) when model.valid => (
      model.copyWith(updatingItinerary: true),
      Cmd.ofEffect((dispatch) async {
        if (model case SearchFormModel(
          :final selectedContinent,
          dateRange: DateTimeRange(:final start, :final end),
          :final guests,
        )) {
          final result = await _itineraryConfigRepository.setItineraryConfig(
            ItineraryConfig(
              continent: selectedContinent,
              startDate: start,
              endDate: end,
              guests: guests,
            ),
          );
          switch (result) {
            case rs.Ok<void>():
              _log.fine('ItineraryConfig saved');
              dispatch(SearchFormMessages.successUpdateItinerary(onSuccess));
            case rs.Error<void>(:final error):
              _log.warning('Failed to store ItineraryConfig', error);
              dispatch(
                SearchFormMessages.failureUpdateItinerary(error, onFailure),
              );
          }
        }
      }),
    ),
    _LoadContinents(continents: rs.Error(:final error)) => (
      model.copyWith(continents: LoadableValue.error(error)),
      Cmd.none(),
    ),
    _UpdateItinerary() => (model, Cmd.none()),
    _SuccessUpdateItinerary(:final handler) => (
      model.copyWith(updatingItinerary: false),
      Cmd.ofEffect((_) {
        handler();
      }),
    ),
    _FailureUpdateItinerary(:final error, :final handler) => (
      model.copyWith(updatingItinerary: false),
      Cmd.ofEffect((_) {
        handler(error);
      }),
    ),
    _Load() => (
      SearchFormModel(),
      Cmd.batch([
        Cmd.ofFunc(
          _itineraryConfigRepository.getItineraryConfig,
          onSuccess: SearchFormMessages.loadItineraryConfig,
        ),
        Cmd.ofFunc(
          _continentRepository.getContinents,
          onSuccess: SearchFormMessages.loadContinents,
        ),
      ]),
    ),
  };
  }
}
