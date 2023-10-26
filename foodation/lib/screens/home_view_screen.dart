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
      title: 'Karage',
      image: 'assets/images/karage.png',
      id: 2,
    ),
    Food(
      title: 'Nugget',
      image: 'assets/images/nugget.png',
      id: 3,
    ),
    Food(
      title: 'Pizza',
      image: 'assets/images/pizza.png',
      id: 4,
    ),
    Food(
      title: 'Potatos',
      image: 'assets/images/potatos.png',
      id: 5,
    ),
    Food(
      title: 'Roti Bakar',
      image: 'assets/images/roti_bakar.png',
      id: 6,
    ),
    Food(
      title: 'Salad With Meal',
      image: 'assets/images/salad_with_meal.png',
      id: 7,
    ),
    Food(
      title: 'Salad With Chicken',
      image: 'assets/images/salad_with_chicken.png',
      id: 8,
    ),
    Food(
      title: 'Waffle',
      image: 'assets/images/waffle_asin.png',
      id: 9,
    ),
    Food(
      title: 'Omelette',
      image: 'assets/images/omelette.png',
      id: 10,
    ),
  ];
}
