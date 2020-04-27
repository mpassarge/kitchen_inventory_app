import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kitchen_inventory_app/ingredient_input_form.dart';

void main() {
  const MaterialApp app = MaterialApp(
    home: Scaffold(
      body: IngredientInputForm(),
    ),
  );

  final Finder nameInputFinder =
      find.byKey(Key(IngredientInputForm.nameInputKeyString));
  final Finder descriptionInputFinder =
      find.byKey(Key(IngredientInputForm.descriptionInputKeyString));
  final Finder weightInputFinder =
      find.byKey(Key(IngredientInputForm.weightInputKeyString));
  final Finder submitInputFinder =
      find.byKey(Key(IngredientInputForm.submitButtonInputKeyString));

  testWidgets('Successfully submit input form', (WidgetTester tester) async {
    await tester.pumpWidget(app);

    expect(find.text('Processing Data'), findsNothing);

    await tester.enterText(nameInputFinder, 'Basil');
    await tester.enterText(descriptionInputFinder, 'Ground');
    await tester.enterText(weightInputFinder, '28');

    await tester.tap(submitInputFinder);
    await tester.pump();

    expect(find.text('Processing Data'), findsOneWidget);
  });

  testWidgets('Fail for not having a name', (WidgetTester tester) async {
    await tester.pumpWidget(app);

    expect(find.text('Processing Data'), findsNothing);

    await tester.enterText(descriptionInputFinder, 'Ground');
    await tester.enterText(weightInputFinder, '28.3');

    await tester.tap(submitInputFinder);
    await tester.pump();

    expect(find.text('Name cannot be empty'), findsOneWidget);
  });

  testWidgets('Fail for not having a description', (WidgetTester tester) async {
    await tester.pumpWidget(app);

    expect(find.text('Processing Data'), findsNothing);

    await tester.enterText(nameInputFinder, 'Basil');
    await tester.enterText(weightInputFinder, '28.3');

    await tester.tap(submitInputFinder);
    await tester.pump();

    expect(find.text('Description cannot be empty'), findsOneWidget);
  });

  testWidgets('Fail for not having a weight', (WidgetTester tester) async {
    await tester.pumpWidget(app);

    expect(find.text('Processing Data'), findsNothing);

    await tester.enterText(nameInputFinder, 'Basil');
    await tester.enterText(descriptionInputFinder, 'Ground');

    await tester.tap(submitInputFinder);
    await tester.pump();

    expect(find.text('Weight cannot be empty'), findsOneWidget);
  });

  testWidgets('Fail for not having a number weight', (WidgetTester tester) async {
    await tester.pumpWidget(app);

    expect(find.text('Processing Data'), findsNothing);

    await tester.enterText(nameInputFinder, 'Basil');
    await tester.enterText(descriptionInputFinder, 'Ground');
    await tester.enterText(weightInputFinder, 'Five');

    await tester.tap(submitInputFinder);
    await tester.pump();

    expect(find.text('Weight must be a valid number'), findsOneWidget);
  });
}
