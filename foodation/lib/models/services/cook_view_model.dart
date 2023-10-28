import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../food_model.dart';

class FoodViewModel extends ChangeNotifier {
  final String apiKey = "aa473a61fc1044d5b93eed85f45e8362";
  final String apiUrl = "https://api.spoonacular.com/recipes/findByIngredients";

  final Dio dio = Dio();

  List<Food> foods = [];

  Future<List<Food>> getRecipesByIngredients(List<String> ingredients) async {
    try {
      Response response = await dio.get(apiUrl, queryParameters: {
        'apiKey': apiKey,
        'ingredients': ingredients.join(','),
      });

      if (response.statusCode == 200) {
        List<dynamic> data = response.data;
        foods = data.map((json) => Food.fromJson(json)).toList();
        notifyListeners();
      }
      return foods;
    } catch (error) {
      print("Error: $error");
      rethrow;
    }
  }
}
