import 'package:flutter/material.dart';

class IngredientInputForm extends StatefulWidget {
  @override
  _IngredientInputFormState createState() => _IngredientInputFormState();
}

//TODO: Clear form after submit.
//TODO: Testing of form
//TODO: Save values and print of model

class _IngredientInputFormState extends State<IngredientInputForm> {
  String name = '';
  String description = '';
  int weight;

  final _formKey = GlobalKey<FormState>();


  String _validateNameInputField(String value) {
    if (value.isEmpty) {
      return 'Enter some text';
    }
    return null;
  }

  String _validateDescriptionField(String value) {
    if (value.isEmpty) {
      return 'Enter some text';
    }
    return null;
  }

  String _validateWeightField(String value) {
    if (value.isEmpty) {
      return 'Enter some numbers';
    }
    try {
      int.parse(value);
    }catch(e){
      return 'Enter a valid number';
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
            decoration: InputDecoration(
              labelText: 'Enter Name of Spice',
            ),
            validator: (value) => _validateNameInputField(value),
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Enter Type of Spice (Ground, Leaves, Whole)',
            ),
            validator: (value) => _validateDescriptionField(value),
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Enter weight of Spice in Grams',
            ),
            validator: (value) => _validateWeightField(value),
          ),
          RaisedButton(
            onPressed: () {
              if (_formKey.currentState.validate()) {
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
