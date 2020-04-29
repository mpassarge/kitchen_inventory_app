import 'package:flutter/material.dart';
import 'package:kitchen_inventory_app/models/ingredient.dart';

class IngredientItem extends StatelessWidget {
  final Ingredient ingredient;

  IngredientItem(this.ingredient);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('${ingredient.name}, ${ingredient.description}', textAlign: TextAlign.left,),
            Text('${ingredient.weight}', textAlign: TextAlign.right,),
          ],
        ),
      ),
    );
  }
}
