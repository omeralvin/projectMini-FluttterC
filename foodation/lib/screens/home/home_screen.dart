import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../widget/recipe_card.dart';
import 'home_view_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            top: 20.0,
          ),
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
                              scale: 2.5,
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
                  fontSize: 18,
                  color: const Color(0xffC21010),
                ),
              ),
              const SizedBox(height: 20.0),
              Consumer<FoodItem>(
                builder: (context, value, child) {
                  if (value.fooditem.isNotEmpty) {
                    return GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemCount: value.fooditem.length,
                      itemBuilder: (context, index) {
                        return CardFood(
                          isNetwork: false,
                          id: value.fooditem[index].id,
                          title: value.fooditem[index].title,
                          image: value.fooditem[index].image,
                        );
                      },
                    );
                  } else {
                    return const Center(
                      child: Text("belum simpan apa-apa nih?!"),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// SafeArea(
//   child: Consumer<FoodItem>(
//     builder: (context, value, child) {
//       if (value.fooditem.isNotEmpty) {
//         return GridView.builder(
//           gridDelegate:
//               const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             crossAxisSpacing: 8,
//             mainAxisSpacing: 8,
//           ),
//           itemCount: value.fooditem.length,
//           itemBuilder: (context, index) {
//             return CardFood(
//               id: value.fooditem[index].id,
//               title: value.fooditem[index].title,
//               image: value.fooditem[index].image,
//               // timeCook: value.fooditem[index].cookTime,
//             );
//           },
//         );
//       } else {
//         return Center(
//           child: Column(
//             children: [
//               Image.asset(
//                 'assets/images/eat.png',
//                 scale: 3.0,
//               ),
//               Expanded(
//                 child: Column(
//                   children: [
//                     Text(
//                       "Ooppss, ",
//                       style: GoogleFonts.poppins(
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                         fontSize: 36,
//                       ),
//                     ),
//                     Text(
//                       "Kamu belum menyimpan apa-apa nih!",
//                       style: GoogleFonts.poppins(
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         );
//       }
//     },
//   ),
// ),
