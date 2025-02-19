// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mvu_layer/mvu.dart';

import '../../../../routing/routes.dart';
import '../../core/localization/applocalization.dart';
import '../../core/themes/dimens.dart';
import '../mvu/search_form.dart';


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
