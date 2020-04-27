import 'package:flutter/material.dart';

class Ingredient {
  String description;
  String name;
  double weight;

  Ingredient({@required this.description, @required this.name, @required this.weight});

  factory Ingredient.fromJson(Map<String, dynamic> json) => Ingredient(
    description: json['description'],
    name: json['name'],
    weight: json['weight']
  );

  Map<String, dynamic> toJson() => {
    "description": description,
    "name": name,
    "weight": weight
  };

  @override
  String toString() {
    return """
    Name: $name,
    Descriptions: $description,
    Weight: $weight Grams
    """;
  }
}
