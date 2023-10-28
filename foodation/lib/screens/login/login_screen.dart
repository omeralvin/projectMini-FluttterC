// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:foodation/database/DBHelper.dart';
import 'package:foodation/models/user_model.dart';
import 'package:foodation/screens/register/regis_screen.dart';
import 'package:foodation/widget/btm_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Future<SharedPreferences> _pref = SharedPreferences.getInstance();

    TextEditingController userController = TextEditingController();
    TextEditingController passController = TextEditingController();

    bool isVisible = false;

    final formkey = GlobalKey<FormState>();

    @override
    initState() {
      super.initState();
      DbHelper();
    }

    Future setSP(UserModel user) async {
      SharedPreferences prefs = await _pref;

      prefs.setInt("id", user.id);
      prefs.setString("name", user.name);
      prefs.setString("username", user.username);
      prefs.setString("password", user.password);
    }

    Login() async {
      String user = userController.text;
      String pass = passController.text;

      if (user.isNotEmpty && pass.isNotEmpty) {
        // Memeriksa login di database menggunakan DbHelper().getLoginUser
        await DbHelper().getLoginUser(user, pass).then((value) {
          if (value != null) {
            // Jika pengguna ditemukan di database
            setSP(value).whenComplete(() {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => BottomNavigation()),
                (Route<dynamic> route) => false,
              );
            });
          } else {
            // Jika pengguna tidak ditemukan di database
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("Login Gagal"),
                  content: Text("Username atau Password salah."),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("OK"),
                    ),
                  ],
                );
              },
            );
          }
        });
      } else {
        // Jika username atau password kosong
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text("Login Gagal"),
              content: const Text("Username dan Password harus diisi."),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("OK"),
                ),
              ],
            );
          },
        );
      }
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 110.0),
          child: Form(
            key: formkey,
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
                TextFormField(
                  controller: userController,
                  decoration: const InputDecoration(
                    // icon: const Icon(Icons.person),
                    labelText: 'Username',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 1,
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Username belum dimasukkan nih!';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15.0),
                TextFormField(
                  controller: passController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 1,
                      ),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                      icon: Icon(
                        isVisible
                            ? Icons.visibility
                            : Icons.visibility_off_rounded,
                      ),
                    ),
                  ),
                  obscureText: !isVisible,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password belum dimasukkan nih!';
                    }
                    return null;
                  },
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
                      if (formkey.currentState!.validate()) {
                        Login();
                      }
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
      ),
    );
  }
}
