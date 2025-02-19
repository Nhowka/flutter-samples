// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:mvu_layer/mvu.dart';

import '../../core/themes/colors.dart';
import '../../core/themes/dimens.dart';
import '../mvu/search_form.dart';

const String removeGuestsKey = 'remove-guests';
const String addGuestsKey = 'add-guests';

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
        return SizedBox(
          width: 90,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                key: const ValueKey(removeGuestsKey),
                onTap: () {
                  dispatch(SearchFormMessages.setGuests(model.guests - 1));
                },
                child: const Icon(
                  Icons.remove_circle_outline,
                  color: AppColors.grey3,
                ),
              ),
              Text(
                model.guests.toString(),
                style:
                model.guests == 0
                    ? Theme.of(context).inputDecorationTheme.hintStyle
                    : Theme.of(context).textTheme.bodyMedium,
              ),

              InkWell(
                key: const ValueKey(addGuestsKey),
                onTap: () {
                  dispatch(SearchFormMessages.setGuests(model.guests + 1));
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
