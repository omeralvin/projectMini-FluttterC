import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../food_model.dart';

class FoodViewModel extends ChangeNotifier {
  final String apiKey = "aa473a61fc1044d5b93eed85f45e8362";
  final String apiUrl = "https://api.spoonacular.com/recipes/findByIngredients";

  final Dio dio = Dio();

  List<Food> foods = [];
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  Future<List<Food>> getRecipesByIngredients(List<String> ingredients) async {
    _isLoading = true;
    notifyListeners();

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
      _isLoading = false;
      notifyListeners();
      return foods;
    } catch (error) {
      print("Error: $error");
      _isLoading = false;
      notifyListeners();
      rethrow;
    }
  }
}
