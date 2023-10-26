import 'package:flutter/material.dart';

import '../models/food_model.dart';

class FoodItem extends ChangeNotifier {
  // List<Food> food = [];
  List<Food> get fooditem => food;
  List<Food> food = [
    Food(
      title: 'Omelette',
      image: 'assets/images/omelette.png',
      id: 1,
    ),
    Food(
      title: 'Omelette',
      image: 'assets/images/omelette.png',
      id: 2,
    ),
    Food(
      title: 'Omelette',
      image: 'assets/images/omelette.png',
      id: 3,
    ),
    Food(
      title: 'Omelette',
      image: 'assets/images/omelette.png',
      id: 3,
    ),
    Food(
      title: 'Omelette',
      image: 'assets/images/omelette.png',
      id: 4,
    ),
    Food(
      title: 'Omelette',
      image: 'assets/images/omelette.png',
      id: 5,
    ),  
    Food(
      title: 'Omelette',
      image: 'assets/images/omelette.png',
      id: 6,
    ),
    Food(
      title: 'Omelette',
      image: 'assets/images/omelette.png',
      id: 7,
    ),
    Food(
      title: 'Omelette',
      image: 'assets/images/omelette.png',
      id: 8,
    ),
    Food(
      title: 'Omelette',
      image: 'assets/images/omelette.png',
      id: 9,
    ),
  ];
}
