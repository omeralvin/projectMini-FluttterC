import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    backgroundImage:
                        NetworkImage('https://picsum.photos/seed/555/600'),
                    backgroundColor: Colors.transparent,
                  ),
                  const SizedBox(width: 20.0),
                  Text(
                    "Hello, Samantha!",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      color: const Color(0XffFFF1F4),
                      width: double.infinity,
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/slide.png',
                              scale: 2.0,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Bahan masakan nganggur ?",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24,
                                      color: const Color(0xffC21010),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    "Yuk, kita masak bahan masakan yang ada dikulkas.",
                                    style: GoogleFonts.poppins(
                                      color: const Color(0xffC21010),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
