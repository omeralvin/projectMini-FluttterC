import 'package:flutter/material.dart';
import 'package:foodation/models/services/cook_view_model.dart';
import 'package:foodation/screens/home_view_screen.dart';
import 'package:provider/provider.dart';
import 'models/food_model.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => FoodItem(),
        ),
        FutureProvider<List<Food>>(
          create: (context) {
            var foodViewModel =
                Provider.of<FoodViewModel>(context, listen: false);
            return foodViewModel.getRecipesByIngredients(['tomat', 'brokoli']);
          },
          initialData: const [],
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: LoginScreen(),
        ),
      ),
    );
  }
}
