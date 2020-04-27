import 'package:flutter/material.dart';

class Ingredient {
  String description;
  String name;
  double weight;

  Ingredient({@required this.description, @required this.name, @required this.weight});

  @override
  String toString() {
    return """
    Name: $name,
    Descriptions: $description,
    Weight: $weight Grams
    """;
  }
}
