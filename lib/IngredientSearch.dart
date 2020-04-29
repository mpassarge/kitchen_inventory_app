import 'package:flutter/material.dart';
import 'models/ingredient.dart';
import 'IngredientItem.dart';

//TODO: Implement search bar
//TODO: Sort output by name, description

final List<Ingredient> ingredients = [
  Ingredient.fromJson(
      {'name': 'Basil', 'description': 'Ground', 'weight': 12.3}),
  Ingredient.fromJson(
      {'name': 'Basil', 'description': 'Leaves', 'weight': 21.4}),
  Ingredient.fromJson(
      {'name': 'Oregano', 'description': 'Leaves', 'weight': 43.2}),
  Ingredient.fromJson(
      {'name': 'Cayene', 'description': 'Ground', 'weight': 87.0}),
  Ingredient.fromJson(
      {'name': 'White Pepper', 'description': 'Ground', 'weight': 27.32}),
  Ingredient.fromJson(
      {'name': 'Basil', 'description': 'Ground', 'weight': 12.3}),
  Ingredient.fromJson(
      {'name': 'Basil', 'description': 'Leaves', 'weight': 21.4}),
  Ingredient.fromJson(
      {'name': 'Oregano', 'description': 'Leaves', 'weight': 43.2}),
  Ingredient.fromJson(
      {'name': 'Cayene', 'description': 'Ground', 'weight': 87.0}),
  Ingredient.fromJson(
      {'name': 'White Pepper', 'description': 'Ground', 'weight': 27.32}),
  Ingredient.fromJson(
      {'name': 'Basil', 'description': 'Ground', 'weight': 12.3}),
  Ingredient.fromJson(
      {'name': 'Basil', 'description': 'Leaves', 'weight': 21.4}),
  Ingredient.fromJson(
      {'name': 'Oregano', 'description': 'Leaves', 'weight': 43.2}),
  Ingredient.fromJson(
      {'name': 'Cayene', 'description': 'Ground', 'weight': 87.0}),
  Ingredient.fromJson(
      {'name': 'White Pepper', 'description': 'Ground', 'weight': 27.32}),
  Ingredient.fromJson(
      {'name': 'Basil', 'description': 'Ground', 'weight': 12.3}),
  Ingredient.fromJson(
      {'name': 'Basil', 'description': 'Leaves', 'weight': 21.4}),
  Ingredient.fromJson(
      {'name': 'Oregano', 'description': 'Leaves', 'weight': 43.2}),
  Ingredient.fromJson(
      {'name': 'Cayene', 'description': 'Ground', 'weight': 87.0}),
  Ingredient.fromJson(
      {'name': 'White Pepper', 'description': 'Ground', 'weight': 27.32})
];

class IngredientSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        IngredientItem(ingredients[0]),
        IngredientItem(ingredients[1]),
        IngredientItem(ingredients[2]),
        IngredientItem(ingredients[3]),
        IngredientItem(ingredients[4]),
        IngredientItem(ingredients[5]),
        IngredientItem(ingredients[6]),
        IngredientItem(ingredients[7]),
        IngredientItem(ingredients[8]),
        IngredientItem(ingredients[9]),
        IngredientItem(ingredients[10]),
        IngredientItem(ingredients[11]),
        IngredientItem(ingredients[12]),
        IngredientItem(ingredients[13]),
        IngredientItem(ingredients[14]),
        IngredientItem(ingredients[15]),
        IngredientItem(ingredients[16]),
        IngredientItem(ingredients[17]),
        IngredientItem(ingredients[18]),
        IngredientItem(ingredients[19]),
      ],
    );
  }
}
