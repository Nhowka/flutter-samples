// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mvu_layer/mvu.dart';

import '../../../../domain/models/continent/continent.dart';
import '../../../../utils/image_error_listener.dart';
import '../../../../utils/loadable.dart';
import '../../core/localization/applocalization.dart';
import '../../core/themes/colors.dart';
import '../../core/themes/dimens.dart';
import '../../core/ui/error_indicator.dart';
import '../mvu/search_form.dart';

/// Continent selection carousel
///
/// Loads a list of continents in a horizontal carousel.
/// Users can tap one item to select it.
/// Tapping again the same item will deselect it.
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
          if (model.continents.isLoading || model.loadingItinerary) {
            return const Center(child: CircularProgressIndicator());
          }
          if (model.continents.hasError) {
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

  bool _selected(SearchFormModel model) =>
      model.selectedContinent == name || model.selectedContinent == null;

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
                      dispatch(
                        SearchFormMessages.setSelectedContinent(
                          model.selectedContinent == name ? null : name,
                        ),
                      );
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
