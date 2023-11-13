import 'package:flutter/material.dart';
import 'package:foodation/models/services/cook_view_model.dart';
import 'package:foodation/screens/login_screen.dart';
// import 'package:foodation/widget/btm_navigation.dart';
import 'package:provider/provider.dart';
import 'screens/home/home_view_screen.dart';

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
      child: MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: const Scaffold(
          body: LoginScreen(),
          // body: BottomNavigation(),
        ),
      ),
    );
  }
}
