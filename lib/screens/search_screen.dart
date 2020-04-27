import 'package:flutter/material.dart';
import 'package:kitchen_inventory_app/Ingredient_Dao.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: RaisedButton(
          onPressed: (){
            IngredientDao dao = IngredientDao();
            dao.getAllIngredients().then((values){print(values);});
          },
          child: Text('Submit'),
        ),
      ),
    );
  }
}