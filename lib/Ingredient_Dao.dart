import 'package:kitchen_inventory_app/AppDatabase.dart';
import 'package:kitchen_inventory_app/models/ingredient.dart';
import 'package:sembast/sembast.dart';

class IngredientDao {
  static const String folderName = "Ingredients";
  final _ingredientFolder = intMapStoreFactory.store(folderName);

  Future<Database> get _db async => await AppDatabase.instance.database;

  Future insertIngredient(Ingredient ingredient) async{

    await _ingredientFolder.add(await _db, ingredient.toJson());
    print('Ingredient inserted successfully!');
  }

  Future<List<Ingredient>> getAllIngredients() async {
    final recordSnapshot = await _ingredientFolder.find(await _db);
    return recordSnapshot.map((snapshot){
      return Ingredient.fromJson(snapshot.value);
    }).toList();
  }
}