import 'package:flutter/material.dart';
import 'package:foodation/models/services/cook_view_model.dart';
import 'package:provider/provider.dart';
import 'screens/home/home_view_screen.dart';
import 'screens/login/login_screen.dart';

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
        ChangeNotifierProvider(
          create: (context) => FoodViewModel(),
        )
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
