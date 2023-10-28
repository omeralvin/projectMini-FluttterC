import 'package:flutter/material.dart';
import 'package:foodation/database/DBHelper.dart';
import 'package:foodation/models/user_model.dart';
import 'package:foodation/screens/login/login_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisScreen extends StatefulWidget {
  const RegisScreen({super.key});

  @override
  State<RegisScreen> createState() => _RegisScreenState();
}

class _RegisScreenState extends State<RegisScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController userController = TextEditingController();
    TextEditingController passController = TextEditingController();
    // var dbHelper;

    final formkey = GlobalKey<FormState>();

    @override
    void initState() {
      super.initState();
      DbHelper();
    }

    signUp() async {
      int uid = 1;
      String uname = nameController.text;
      String uuser = userController.text;
      String upass = passController.text;
      if (formkey.currentState!.validate()) {
        formkey.currentState!.save();
      }

      UserModel uModel = UserModel(uid, uname, uuser, upass);
      await DbHelper().saveData(uModel).then(
            (value) => const AlertDialog(
              title: Text("Yeay!!"),
              content: Text("Berhasil didaftarkan!"),
            ),
          );

      Future.delayed(const Duration(seconds: 2), () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const LoginScreen(),
          ),
        );
      });
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 110.0),
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Foodation",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Daftar dulu sebelum cari resep!",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 48,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                TextFormField(
                  textCapitalization: TextCapitalization.words,
                  controller: nameController,
                  decoration: const InputDecoration(
                    labelText: 'Nama',
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
                      return 'Namamu belum dimasukkan nih!';
                    } else if (value.trim().split(' ').length < 2) {
                      return 'Isi nama min 2 Kata';
                    } else if (RegExp(r'[0-9,!@#$%^&*()_+]').hasMatch(value)) {
                      return 'Nama tidak boleh angka atau karakter khusus';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15.0),
                TextFormField(
                  controller: userController,
                  decoration: const InputDecoration(
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
                      return 'Username belum diisi nih!';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15.0),
                TextFormField(
                  obscureText: true,
                  controller: passController,
                  decoration: const InputDecoration(
                    labelText: 'Password',
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
                      return 'Password belum dibuat nih!';
                    } else if (!RegExp(r'[0-9,!@#$%^&*()_+]').hasMatch(value)) {
                      return 'Password setidaknya ada karakter khusus atau angka';
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
                        signUp();
                      }
                    },
                    child: Text(
                      "Daftar",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    const Text("Sudah punya akun?"),
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: const Color(0xffC21010),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      child: const Text("Masuk"),
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
