import 'package:flutter/material.dart';

import '../models/model_food.dart';

class FoodItem extends ChangeNotifier {
  List<Food> food = [
    Food(
      title: 'Omelette',
      image: 'assets/images/omelette.png',
      cookTime: '25 mnt',
    ),
    Food(
      title: 'Omelette',
      image: 'assets/images/omelette.png',
      cookTime: '25 mnt',
    ),
    Food(
      title: 'Omelette',
      image: 'assets/images/omelette.png',
      cookTime: '25 mnt',
    ),
    Food(
      title: 'Omelette',
      image: 'assets/images/omelette.png',
      cookTime: '25 mnt',
    ),
    Food(
      title: 'Omelette',
      image: 'assets/images/omelette.png',
      cookTime: '25 mnt',
    ),
    Food(
      title: 'Omelette',
      image: 'assets/images/omelette.png',
      cookTime: '25 mnt',
    ),
    Food(
      title: 'Omelette',
      image: 'assets/images/omelette.png',
      cookTime: '25 mnt',
    ),
    Food(
      title: 'Omelette',
      image: 'assets/images/omelette.png',
      cookTime: '25 mnt',
    ),
    Food(
      title: 'Omelette',
      image: 'assets/images/omelette.png',
      cookTime: '25 mnt',
    ),
    Food(
      title: 'Omelette',
      image: 'assets/images/omelette.png',
      cookTime: '25 mnt',
    ),
  ];

  List<Food> get fooditem => food;
}
