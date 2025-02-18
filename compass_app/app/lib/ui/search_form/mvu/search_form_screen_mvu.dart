// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mvu_layer/mvu.dart';

import '../../../domain/models/continent/continent.dart';
import '../../../routing/routes.dart';
import '../../../utils/image_error_listener.dart';
import '../../../utils/loadable.dart';
import '../../core/localization/applocalization.dart';
import '../../core/themes/colors.dart';
import '../../core/themes/dimens.dart';
import '../../core/ui/date_format_start_end.dart';
import '../../core/ui/error_indicator.dart';
import '../../core/ui/search_bar.dart';
import '../../results/widgets/results_screen.dart';
import 'search_form_mvu.dart';

const String removeGuestsKey = 'remove-guests';
const String addGuestsKey = 'add-guests';

const String searchFormSubmitButtonKey = 'submit-button';

/// Search form submit button
///
/// The button is disabled when the form is data is incomplete.
/// When tapped, it navigates to the [ResultsScreen]
/// passing the search options as query parameters.
class SearchFormSubmit extends StatelessWidget {
  const SearchFormSubmit({super.key, required this.processor});

  final SearchFormProcessor processor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: Dimens.paddingVertical,
        left: Dimens.of(context).paddingScreenHorizontal,
        right: Dimens.of(context).paddingScreenHorizontal,
        bottom: Dimens.of(context).paddingScreenVertical,
      ),
      child: MVUBuilder.ofProcessor(
        processor: processor,
        view: (context, model, dispatch) {
          return FilledButton(
            key: const ValueKey(searchFormSubmitButtonKey),
            onPressed: model.valid ? () => _onResult(context, dispatch) : null,
            child: SizedBox(
              height: 52,
              child: Center(child: Text(AppLocalization.of(context).search)),
            ),
          );
        },
      ),
    );
  }

  void _onResult(BuildContext context, Dispatch<SearchFormMessages> dispatch) {
    void onSuccess() => context.go(Routes.results);
    void onFailure(Exception error) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(AppLocalization.of(context).errorWhileSavingItinerary),
          action: SnackBarAction(
            label: AppLocalization.of(context).tryAgain,
            onPressed: () => _onResult(context, dispatch),
          ),
        ),
      );
    }

    dispatch(
      SearchFormMessages.updateItinerary(
        onSuccess: onSuccess,
        onFailure: onFailure,
      ),
    );
  }
}

/// Number of guests selection form
///
/// Users can tap the Plus and Minus icons to increase or decrease
/// the number of guests.
class SearchFormGuests extends StatelessWidget {
  const SearchFormGuests({super.key, required this.processor});

  final SearchFormProcessor processor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: Dimens.paddingVertical,
        left: Dimens.of(context).paddingScreenHorizontal,
        right: Dimens.of(context).paddingScreenHorizontal,
      ),
      child: Container(
        height: 64,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.grey1),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Dimens.paddingHorizontal,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Who', style: Theme.of(context).textTheme.titleMedium),
              _QuantitySelector(processor),
            ],
          ),
        ),
      ),
    );
  }
}

class _QuantitySelector extends StatelessWidget {
  const _QuantitySelector(this.processor);

  final SearchFormProcessor processor;

  @override
  Widget build(BuildContext context) {
    return MVUBuilder.ofProcessor(
      processor: processor,
      view: (context, model, dispatch) {
        final guests = switch (model.guests) {
          LoadedValue<int>(:final value) => value,
          _ => 0,
        };
        return SizedBox(
          width: 90,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                key: const ValueKey(removeGuestsKey),
                onTap: () {
                  dispatch(SearchFormMessages.setGuests(guests - 1));
                },
                child: const Icon(
                  Icons.remove_circle_outline,
                  color: AppColors.grey3,
                ),
              ),
              Text(
                guests.toString(),
                style:
                    guests == 0
                        ? Theme.of(context).inputDecorationTheme.hintStyle
                        : Theme.of(context).textTheme.bodyMedium,
              ),

              InkWell(
                key: const ValueKey(addGuestsKey),
                onTap: () {
                  dispatch(SearchFormMessages.setGuests(guests + 1));
                },
                child: const Icon(
                  Icons.add_circle_outline,
                  color: AppColors.grey3,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class SearchFormDate extends StatelessWidget {
  const SearchFormDate({super.key, required this.processor});

  final SearchFormProcessor processor;

  @override
  Widget build(BuildContext context) {
    return MVUBuilder.ofProcessor(
      processor: processor,
      view: (context, model, dispatch) {
        return Padding(
          padding: EdgeInsets.only(
            top: Dimens.paddingVertical,
            left: Dimens.of(context).paddingScreenHorizontal,
            right: Dimens.of(context).paddingScreenHorizontal,
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(16.0),
            onTap: () {
              showDateRangePicker(
                context: context,
                firstDate: DateTime.now(),
                lastDate: DateTime.now().add(const Duration(days: 365)),
              ).then(
                (dateRange) =>
                    dispatch(SearchFormMessages.setDateRange(dateRange)),
              );
            },
            child: Container(
              height: 64,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.grey1),
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: Dimens.paddingHorizontal,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppLocalization.of(context).when,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    switch (model.dateRange) {
                      LoadedValue(value: final DateTimeRange dateRange) => Text(
                        dateFormatStartEnd(dateRange),
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      _ => Text(
                        AppLocalization.of(context).addDates,
                        style: Theme.of(context).inputDecorationTheme.hintStyle,
                      ),
                    },
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class SearchFormContinent extends StatelessWidget {
  const SearchFormContinent({super.key, required this.processor});

  final SearchFormProcessor processor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: MVUBuilder.ofProcessor(
        processor: processor,
        view: (context, model, dispatch) {
          if (model.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (model.hasError) {
            return Center(
              child: ErrorIndicator(
                title: AppLocalization.of(context).errorWhileLoadingContinents,
                label: AppLocalization.of(context).tryAgain,
                onPressed: () => dispatch(SearchFormMessages.load()),
              ),
            );
          }
          final continents = switch (model.continents) {
            LoadedValue<List<Continent>>(:final value) => value,
            _ => <Continent>[],
          };
          return ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: continents.length,
            padding: Dimens.of(context).edgeInsetsScreenHorizontal,
            itemBuilder: (BuildContext context, int index) {
              final Continent(:imageUrl, :name) = continents[index];
              return _CarouselItem(
                key: ValueKey(name),
                imageUrl: imageUrl,
                name: name,
                processor: processor,
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(width: 8);
            },
          );
        },
      ),
    );
  }
}

class _CarouselItem extends StatelessWidget {
  const _CarouselItem({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.processor,
  });

  final String imageUrl;
  final String name;
  final SearchFormProcessor processor;

  bool _selected(SearchFormModel model) => switch (model.selectedContinent) {
    LoadedValue<String?>(:final value) => value == null || value == name,
    _ => false,
  };

  @override
  Widget build(BuildContext context) => MVUBuilder.ofProcessor(
    processor: processor,
    view: (
      BuildContext context,
      SearchFormModel model,
      Dispatch<SearchFormMessages> dispatch,
    ) {
      return SizedBox(
        width: 140,
        height: 140,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Stack(
            children: [
              CachedNetworkImage(
                imageUrl: imageUrl,
                fit: BoxFit.cover,
                errorListener: imageErrorListener,
                errorWidget: (context, url, error) {
                  // NOTE: Getting "invalid image data" error for some of the images
                  // e.g. https://rstr.in/google/tripedia/jlbgFDrSUVE
                  return const DecoratedBox(
                    decoration: BoxDecoration(color: AppColors.grey3),
                    child: SizedBox(width: 140, height: 140),
                  );
                },
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    name,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.openSans(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: AppColors.white1,
                    ),
                  ),
                ),
              ),
              // Overlay when other continent is selected
              Positioned.fill(
                child: AnimatedOpacity(
                  opacity: _selected(model) ? 0 : 0.7,
                  duration: kThemeChangeDuration,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      // Support dark-mode
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ),
              ),
              // Handle taps
              Positioned.fill(
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      switch (model.selectedContinent) {
                        case LoadedValue<String?>(:final value)
                            when value == name:
                          dispatch(
                            SearchFormMessages.setSelectedContinent(null),
                          );
                          break;
                        default:
                          dispatch(
                            SearchFormMessages.setSelectedContinent(name),
                          );
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

/// Search form screen
///
/// Displays a search form with continent, date and guests selection.
/// Tapping on the submit button opens the [ResultsScreen] screen
/// passing the search options as query parameters.
class SearchFormScreenMVU extends StatelessWidget {
  const SearchFormScreenMVU({super.key, required this.processor});

  final SearchFormProcessor processor;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, r) {
        if (!didPop) context.go(Routes.home);
      },
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SafeArea(
              top: true,
              bottom: false,
              child: Padding(
                padding: EdgeInsets.only(
                  top: Dimens.of(context).paddingScreenVertical,
                  left: Dimens.of(context).paddingScreenHorizontal,
                  right: Dimens.of(context).paddingScreenHorizontal,
                  bottom: Dimens.paddingVertical,
                ),
                child: const AppSearchBar(),
              ),
            ),
            SearchFormContinent(processor: processor),
            SearchFormDate(processor: processor),
            SearchFormGuests(processor: processor),
            const Spacer(),
            SearchFormSubmit(processor: processor),
          ],
        ),
      ),
    );
  }
}
