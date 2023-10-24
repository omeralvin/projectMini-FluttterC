import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MasakScreen extends StatefulWidget {
  const MasakScreen({super.key});

  @override
  State<MasakScreen> createState() => _MasakScreenState();
}

class _MasakScreenState extends State<MasakScreen> {
  OutlineInputBorder focusBorder() {
    return const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        borderSide: BorderSide(
          color: Color(0xffC21010),
          width: 2,
        ));
  }

  TextEditingController textController = TextEditingController();
  int textCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 400,
                decoration: const BoxDecoration(
                  color: Color(0XffFFF1F4),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Text(
                      "Masak apa hari ini ?",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                        color: const Color(0xffC21010),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    TextField(
                      // controller: userController,
                      decoration: InputDecoration(
                        hintText: 'Bahan masakan',
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        focusedBorder: focusBorder(),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Text(
            "Masak apa hari ini ?",
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 26),
          ),
          const SizedBox(height: 20.0),
          const TextField(
            // controller: userController,
            decoration: InputDecoration(
              hintText: 'Bahan masakan',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
            ),
          ),
          const SizedBox(height: 20.0),
          Center(
            child: CircleAvatar(
              backgroundColor: const Color(0xffC21010),
              child: IconButton(
                color: Colors.white,
                onPressed: () {
                  setState(() {
                    textController.text = "Teks ${++textCount}";
                  });
                },
                icon: const Icon(Icons.add),
              ),
            ),
          )
        ],
      ),
    );
  }
}
