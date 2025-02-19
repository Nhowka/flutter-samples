// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:compass_app/ui/search_form/mvu/search_form.dart';
import 'package:compass_app/ui/search_form/widgets/search_form_continent.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../testing/app.dart';
import '../../../../testing/fakes/repositories/fake_continent_repository.dart';
import '../../../../testing/fakes/repositories/fake_itinerary_config_repository.dart';

void main() {
  group('SearchFormContinent widget tests', () {
    late SearchFormProcessor processor;

    setUp(() {
      processor = SearchFormProcessor(
        continentRepository: FakeContinentRepository(),
        itineraryConfigRepository: FakeItineraryConfigRepository(),
      );
    });

    loadWidget(WidgetTester tester) async {
      // Settle model
      await tester.runAsync(() => processor.useModel((model, _) => true));
      await testApp(tester, SearchFormContinent(processor: processor));
    }

    testWidgets('Should load and select continent', (
      WidgetTester tester,
    ) async {
      await loadWidget(tester);
      expect(find.byType(SearchFormContinent), findsOneWidget);

      // Select continent
      await tester.tap(find.text('CONTINENT'), warnIfMissed: false);

      await processor.useModel((model, _) => expect(model.selectedContinent, 'CONTINENT'));
    });
  });
}
