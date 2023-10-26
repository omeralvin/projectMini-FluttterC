import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class CardFood extends StatelessWidget {
  final String title;
  final String image;
  final int id;

  const CardFood({
    Key? key,
    required this.title,
    required this.image,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Image.asset(image),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(title),
              Text(id.toString()),
            ],
          ),
        ],
      ),
    );
    // return Card(
    //   clipBehavior: Clip.antiAliasWithSaveLayer,
    //   elevation: 2,
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(10),
    //   ),
    //   color: Colors.white,
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.stretch,
    //     mainAxisSize: MainAxisSize.max,
    //     children: [
    //       Expanded(
    //         child: Stack(
    //           children: [
    //             ClipRRect(
    //               borderRadius: BorderRadius.circular(8),
    //               child: Image.asset(
    //                 image,
    //                 width: screenWidth,
    //                 height: screenWidth * 0.65,
    //                 // Mengatur tinggi gambar sesuai proporsi
    //               ),
    //             ),
    //             Row(
    //               mainAxisAlignment: MainAxisAlignment.end,
    //               crossAxisAlignment: CrossAxisAlignment.end,
    //               children: [
    //                 Container(
    //                   padding: const EdgeInsets.all(5),
    //                   margin: const EdgeInsets.all(10),
    //                   decoration: BoxDecoration(
    //                     color: const Color(0XffFFF1F4).withOpacity(0.8),
    //                     borderRadius: BorderRadius.circular(15),
    //                   ),
    //                   child: Row(
    //                     children: [
    //                       const Icon(
    //                         Icons.schedule,
    //                         color: Color(0xffC21010),
    //                         size: 18,
    //                       ),
    //                       const SizedBox(width: 7),
    //                       Text(
    //                         timeCook,
    //                         style: GoogleFonts.poppins(
    //                           fontWeight: FontWeight.bold,
    //                           fontSize: 12,
    //                           color: const Color(0xffC21010),
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                 )
    //               ],
    //             )
    //           ],
    //         ),
    //       ),
    //       Padding(
    //         padding: const EdgeInsets.all(8.0),
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             Text(
    //               title,
    //               style: GoogleFonts.poppins(
    //                 fontSize: 14,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //             IconButton(
    //               onPressed: () {},
    //               icon: const Icon(Icons.bookmark),
    //             )
    //           ],
    //         ),
    //       ),
    //       const Padding(
    //         padding: EdgeInsets.all(8.0),
    //         child: Text(
    //           "Description",
    //           style: TextStyle(
    //             fontSize: 12,
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
