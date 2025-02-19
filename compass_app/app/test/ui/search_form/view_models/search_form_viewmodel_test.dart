// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:compass_app/ui/search_form/mvu/search_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../testing/fakes/repositories/fake_continent_repository.dart';
import '../../../../testing/fakes/repositories/fake_itinerary_config_repository.dart';

void main() {
  group('SearchFormViewModel Tests', () {
    late SearchFormProcessor processor;

    setUp(() {
      processor = SearchFormProcessor(
        continentRepository: FakeContinentRepository(),
        itineraryConfigRepository: FakeItineraryConfigRepository(),
      );
    });

    test('Initial values are correct', () async {
      final model = await processor.useModel((m, _) => m);
      expect(model.valid, false);
      expect(model.selectedContinent, null);
      expect(model.dateRange, null);
      expect(model.guests, 0);
    });

    test('Setting dateRange updates correctly', () async {
      final newDateRange = DateTimeRange(
        start: DateTime(2024, 1, 1),
        end: DateTime(2024, 1, 31),
      );
      processor.dispatch(SearchFormMessages.setDateRange(newDateRange));
      await processor.useModel((model, _) => expect(model.dateRange, newDateRange));
    });

    test('Setting selectedContinent updates correctly', () async {
      processor.selectedContinent = 'CONTINENT';
      await processor.useModel(
        (model, _) => expect(model.selectedContinent, 'CONTINENT'),
      );

      // Setting null should work
      processor.selectedContinent = null;
      await processor.useModel((model, _) => expect(model.selectedContinent, null));
    });

    test('Setting guests updates correctly', () async {
      processor.guests = 2;
      await processor.useModel((model, _) => expect(model.guests, 2));

      // Guests number should not be negative
      processor.guests = -1;
      await processor.useModel((model, _) => expect(model.guests, 0));
    });

    test('Set all values and save', () async {
      await processor.useModel((model, _) => expect(model.valid, false));

      processor.guests = 2;
      processor.selectedContinent = 'CONTINENT';
      final newDateRange = DateTimeRange(
        start: DateTime(2024, 1, 1),
        end: DateTime(2024, 1, 31),
      );
      processor.dateRange = newDateRange;

      await processor.useModel((model, _) => expect(model.valid, true));
      final success = Completer<bool>();
      processor.dispatch(
        SearchFormMessages.updateItinerary(
          onSuccess: () => success.complete(true),
          onFailure: (_) => success.complete(false),
        ),
      );

      expect(await success.future, true);
    });
  });
}
