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
            crossAxisAlignment: CrossAxisAlignment.start,
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
                                mainAxisAlignment: MainAxisAlignment.center,
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
              Text(
                "Laman Tersimpan",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  color: const Color(0xffC21010),
                ),
              ),
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(color: Colors.grey),
                ),
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/omelette.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text("Omeltte"),
                    ),
                    // Container(
                    //   height: 135,
                    //   child: Stack(
                    //     children: [
                    //       Padding(
                    //         padding: const EdgeInsets.all(25),
                    //         child: Image.asset('assets/images/omelette.jpeg'),
                    //       ),
                    //       Expanded(
                    //           child: Container(
                    //         alignment: Alignment.centerLeft,
                    //         padding: const EdgeInsets.only(left: 5, right: 5),
                    //         child: Column(
                    //           mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //           crossAxisAlignment: CrossAxisAlignment.start,
                    //           children: [
                    //             Row(
                    //               mainAxisAlignment:
                    //                   MainAxisAlignment.spaceBetween,
                    //               children: [
                    //                 Container(
                    //                   margin: const EdgeInsets.only(left: 5),
                    //                   child: const Text("Omlette"),
                    //                 ),
                    //               ],
                    //             ),
                    //           ],
                    //         ),
                    //       ))
                    //     ],
                    //   ),
                    // )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
