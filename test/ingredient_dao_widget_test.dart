import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kitchen_inventory_app/Ingredient_Dao.dart';
import 'package:kitchen_inventory_app/models/ingredient.dart';


//TODO: How to test DAO...???
void main() {

  IngredientDao dao;

  setUp(() {
    dao = new IngredientDao();
  });

  tearDown(() {
    dao = null;
  });

  test('Successfully insert ingredient', () async {});

  test('Failing to insert a duplicate ingredient/description', () {});

  test('Successfully getting all ingredients', () {});
}
