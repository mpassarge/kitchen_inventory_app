import 'package:flutter/material.dart';
import 'package:kitchen_inventory_app/models/ingredient.dart';

class IngredientInputForm extends StatefulWidget {
  const IngredientInputForm({Key key}) : super(key: key);

  static const String nameInputKeyString = 'IngredientInputName';
  static const String descriptionInputKeyString = 'IngredientInputDescription';
  static const String weightInputKeyString = 'IngredientInputWeight';
  static const String submitButtonInputKeyString =
      'IngredientInputSubmitButton';

  @override
  _IngredientInputFormState createState() => _IngredientInputFormState();
}

//TODO: Testing of form

class _IngredientInputFormState extends State<IngredientInputForm> {
  String _name = '';
  String _description = '';
  double _weight;

  final _formKey = GlobalKey<FormState>();

  void _setUpInputs() {
    _name = '';
    _description = '';
    _weight = null;
  }

  String _validateNameInputField(String value) {
    if (value.isEmpty) {
      return 'Name cannot be empty';
    }
    return null;
  }

  String _validateDescriptionField(String value) {
    if (value.isEmpty) {
      return 'Description cannot be empty';
    }
    return null;
  }

  String _validateWeightField(String value) {
    if (value.isEmpty) {
      return 'Weight cannot be empty';
    }
    try {
      double.parse(value);
    } catch (e) {
      return 'Weight must be a valid number';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            key: Key(IngredientInputForm.nameInputKeyString),
            decoration: InputDecoration(
              labelText: 'Enter Name of Spice',
            ),
            validator: (value) => _validateNameInputField(value),
            onSaved: (value) => _name = value,
          ),
          TextFormField(
            key: Key(IngredientInputForm.descriptionInputKeyString),
            decoration: InputDecoration(
              labelText: 'Enter Type of Spice (Ground, Leaves, Whole)',
            ),
            validator: (value) => _validateDescriptionField(value),
            onSaved: (value) => _description = value,
          ),
          TextFormField(
            key: Key(IngredientInputForm.weightInputKeyString),
            decoration: InputDecoration(
              labelText: 'Enter weight of Spice in Grams',
            ),
            validator: (value) => _validateWeightField(value),
            onSaved: (value) => _weight =  double.parse(value),
          ),
          RaisedButton(
            key: Key(IngredientInputForm.submitButtonInputKeyString),
            onPressed: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();

                final Ingredient ingredient = Ingredient(
                    description: _description, name: _name, weight: _weight);
                print(ingredient);

                _setUpInputs();
                _formKey.currentState.reset();
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text('Processing Data'),
                ));
              }
            },
            child: Text('Submit'),
          )
        ],
      ),
    );
  }
}
