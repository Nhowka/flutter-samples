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

part 'search_form_mvu.freezed.dart';

@freezed
class SearchFormModel with _$SearchFormModel {
  const SearchFormModel._();

  const factory SearchFormModel({
    @Default(LoadableValue.loading()) LoadableValue<List<Continent>> continents,
    @Default(LoadableValue.loading()) LoadableValue<String?> selectedContinent,
    @Default(LoadableValue.loading()) LoadableValue<DateTimeRange?> dateRange,
    @Default(LoadableValue.loading()) LoadableValue<int> guests,
    @Default(false) bool updatingItinerary,
  }) = _SearchFormModel;

  bool get valid => switch (this) {
    SearchFormModel(guests: LoadedValue(value: final guests)) =>
      guests > 0 && selectedContinent.hasValue && dateRange.hasValue,
    _ => false,
  };

  bool get isLoading =>
      continents.isLoading ||
      selectedContinent.isLoading ||
      dateRange.isLoading ||
      guests.isLoading;

  bool get hasError =>
      continents.hasError ||
      selectedContinent.hasError ||
      dateRange.hasError ||
      guests.hasError;
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
  }
  ) = _UpdateItinerary;

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

  @override
  (SearchFormModel, Cmd<SearchFormMessages>) init() => (
    SearchFormModel(),
    Cmd.ofMsg(SearchFormMessages.load()),
  );

  @override
  (SearchFormModel, Cmd<SearchFormMessages>) update(
    SearchFormMessages msg,
    SearchFormModel model,
  ) => switch (msg) {
    _SetDateRange(:final dateRange) => (
      model.copyWith(dateRange: LoadableValue.loaded(dateRange)),
      Cmd.none(),
    ),
    _SetSelectedContinent(:final continent) => (
      model.copyWith(selectedContinent: LoadableValue.loaded(continent)),
      Cmd.none(),
    ),
    _SetGuests(:final quantity) => (
      model.copyWith(guests: LoadableValue.loaded(max(quantity, 0))),
      Cmd.none(),
    ),
    _LoadItineraryConfig(:final config) => switch (config) {
      rs.Ok<ItineraryConfig>(:final value) => (
        model.copyWith(
          selectedContinent: LoadableValue.loaded(value.continent),
          guests: LoadableValue.loaded(value.guests ?? 0),
          dateRange: switch (value) {
            ItineraryConfig(
              :final DateTime startDate,
              :final DateTime endDate,
            ) =>
              LoadableValue.loaded(
                DateTimeRange(start: startDate, end: endDate),
              ),
            _ => LoadableValue.loaded(null),
          },
        ),
        Cmd.none(),
      ),
      rs.Error<ItineraryConfig>(:final error) => (
        model.copyWith(
          selectedContinent: LoadableValue.error(error),
          guests: LoadableValue.error(error),
          dateRange: LoadableValue.error(error),
        ),
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
          selectedContinent: LoadedValue(value: final selectedContinent),
          dateRange: LoadedValue(
            value: DateTimeRange(:final start, :final end),
          ),
          guests: LoadedValue(value: final guests),
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
          _continentRepository.getContinents,
          onSuccess: SearchFormMessages.loadContinents,
        ),
        Cmd.ofFunc(
          _itineraryConfigRepository.getItineraryConfig,
          onSuccess: SearchFormMessages.loadItineraryConfig,
        ),
      ]),
    ),
  };
}
