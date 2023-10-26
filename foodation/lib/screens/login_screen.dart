import 'package:flutter/material.dart';
import 'package:foodation/screens/regis_screen.dart';
import 'package:foodation/widget/btm_navigation.dart';
import 'package:foodation/widget/recipe_card.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController userController = TextEditingController();
    TextEditingController passController = TextEditingController();

    OutlineInputBorder focusBorder() {
      return const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          borderSide: BorderSide(
            color: Colors.red,
            width: 1,
          ));
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 110.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Foodation",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 250,
                child: Image.asset('assets/images/login.png'),
              ),
              const SizedBox(height: 40),
              TextField(
                controller: userController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  focusedBorder: focusBorder(),
                ),
              ),
              const SizedBox(height: 15.0),
              TextField(
                controller: passController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  focusedBorder: focusBorder(),
                ),
              ),
              const SizedBox(height: 15.0),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffC21010),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BottomNavigation(),
                        // builder: (context) => const CardFood(
                        //     title: 'aku',
                        //     image: 'assets/images/omelette.png',
                        //     id: 1)),
                      ),
                    );
                  },
                  child: Text(
                    "Masuk",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  const Text("Belum punya akun?"),
                  TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: const Color(0xffC21010),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisScreen(),
                        ),
                      );
                    },
                    child: const Text("Daftar"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
