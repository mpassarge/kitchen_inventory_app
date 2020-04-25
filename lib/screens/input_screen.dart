import 'package:flutter/material.dart';
import 'package:kitchen_inventory_app/ingredient_input_form.dart';

class InputScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IngredientInputForm(),
    );
  }
}