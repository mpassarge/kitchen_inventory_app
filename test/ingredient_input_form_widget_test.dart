import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kitchen_inventory_app/ingredient_input_form.dart';

void main() {
  const MaterialApp app = MaterialApp(
    home: Scaffold(
      body: IngredientInputForm(),
    ),
  );

  testWidgets('Successfully submit form', (WidgetTester tester) async {
    await tester.pumpWidget(app);

    final Finder name = find.byKey(Key(IngredientInputForm.nameInputKeyString));
    final Finder description =
        find.byKey(Key(IngredientInputForm.descriptionInputKeyString));
    final Finder weight =
        find.byKey(Key(IngredientInputForm.weightInputKeyString));
    final Finder submit =
        find.byKey(Key(IngredientInputForm.submitButtonInputKeyString));

    expect(find.text('Processing Data'), findsNothing);

    await tester.enterText(name, 'Basil');
    await tester.enterText(description, 'Ground');
    await tester.enterText(weight, '28');

    await tester.tap(submit);
    await tester.pump();

    expect(find.text('Processing Data'), findsOneWidget);
  });
}
