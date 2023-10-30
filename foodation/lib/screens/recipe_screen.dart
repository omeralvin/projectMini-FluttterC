import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../widget/recipe_card.dart';
import '../models/services/cook_view_model.dart';

class CookScreen extends StatefulWidget {
  const CookScreen({Key? key}) : super(key: key);

  @override
  State<CookScreen> createState() => _CookScreenState();
}

class _CookScreenState extends State<CookScreen> {
  TextEditingController ingredientsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var foodProvider = Provider.of<FoodViewModel>(context);
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 380,
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
                    SizedBox(
                      width: double.infinity,
                      height: 150,
                      child: Image.asset(
                        'assets/images/makan.png',
                        scale: 0.1,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Masak apa hari ini ?",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                        // color: const Color(0xffC21010),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    TextField(
                      controller: ingredientsController,
                      decoration: const InputDecoration(
                        labelText: 'Bahan masakan',
                        hintText: 'tomat,brokoli,...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
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
                        onPressed: () async {
                          if (foodProvider.isLoading)
                            Center(child: CircularProgressIndicator());

                          await foodProvider.getRecipesByIngredients(
                            ingredientsController.text.split(','),
                          );
                          if (!foodProvider.isLoading &&
                              foodProvider.foods.isNotEmpty) {
                            GridView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 10,
                                crossAxisSpacing: 10,
                              ),
                              itemCount: foodProvider.foods.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {},
                                  child: CardFood(
                                    id: foodProvider.foods[index].id,
                                    title: foodProvider.foods[index].title,
                                    image: foodProvider.foods[index].image,
                                  ),
                                );
                              },
                            );
                          }
                        },
                        child: Text(
                          "Masak",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';

// import 'cook_view_model.dart';

// class CookScreen extends StatefulWidget {
//   const CookScreen({super.key});

//   @override
//   State<CookScreen> createState() => _CookScreenState();
// }

// class _CookScreenState extends State<CookScreen> {
//   OutlineInputBorder focusBorder() {
//     return const OutlineInputBorder(
//         borderRadius: BorderRadius.all(Radius.circular(15)),
//         borderSide: BorderSide(
//           color: Color(0xffC21010),
//           width: 2,
//         ));
//   }

//   TextEditingController textController = TextEditingController();
//   int textCount = 0;

//   @override
//   Widget build(BuildContext context) {
//     var foodProvider = Provider.of<FoodViewModel>(context);
//     TextEditingController ingredientsController = TextEditingController();
//     return Scaffold(
//       body: ListView(
//         children: [
//           Stack(
//             children: [
//               Container(
//                 height: 400,
//                 decoration: const BoxDecoration(
//                   color: Color(0XffFFF1F4),
//                   borderRadius: BorderRadius.only(
//                     bottomLeft: Radius.circular(15),
//                     bottomRight: Radius.circular(15),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(15.0),
//                 child: Column(
//                   children: [
//                     Text(
//                       "Masak apa hari ini ?",
//                       style: GoogleFonts.poppins(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 26,
//                         color: const Color(0xffC21010),
//                       ),
//                     ),
//                     const SizedBox(height: 20.0),
//                     TextField(
//                       controller: ingredientsController,
//                       decoration: InputDecoration(
//                         labelText: 'Bahan masakan',
//                         hintText: 'tomat,brokoli,...',
//                         border: const OutlineInputBorder(
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(15))),
//                         focusedBorder: focusBorder(),
//                       ),
//                     ),
//                     const SizedBox(height: 15.0),
//                     SizedBox(
//                       width: double.infinity,
//                       height: 50,
//                       child: ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: const Color(0xffC21010),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(15),
//                           ),
//                         ),
//                         onPressed: () {
//                           foodProvider.getFoodsByIngredients(
//                               ingredientsController.text.split(','));
//                           setState(() {});
//                         },
//                         child: Text(
//                           "Cooking",
//                           style: GoogleFonts.poppins(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 18,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// FutureBuilder(
                          //   future: foodProvider.getFoods(),
                          //   builder:
                          //       (context, AsyncSnapshot<List<Food>> snapshot) {
                          //     if (snapshot.connectionState ==
                          //         ConnectionState.waiting) {
                          //       return Center(
                          //           child: CircularProgressIndicator());
                          //     } else if (snapshot.hasError) {
                          //       return Center(
                          //           child: Text('Error: ${snapshot.error}'));
                          //     } else if (!snapshot.hasData ||
                          //         snapshot.data!.isEmpty) {
                          //       return Center(
                          //           child: Text('Tidak ada resep ditemukan.'));
                          //     } else {
                          //       // Tampilkan data resep menggunakan ListView atau widget lainnya
                          //       return ListView.builder(
                          //         itemCount: snapshot.data!.length,
                          //         itemBuilder: (context, index) {
                          //           var recipe = snapshot.data![index];
                          //           return ListTile(
                          //             title: Text(recipe.title),
                          //             leading: Image.network(recipe.image),
                          //           );
                          //         },
                          //       );
                          //     }
                          //   },
                          // );