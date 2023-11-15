import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    // final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Align(
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        radius: 50.0,
                        backgroundImage: NetworkImage(
                            'https://picsum.photos/200/300?random=1'),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text("Tamara Riswat",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              elevation: 0,
              color: const Color(0xffC21010),
              child: Column(
                children: [
                  SizedBox(
                    height: 70,
                    child: ListTile(
                      leading: Icon(
                        Icons.camera_alt_sharp,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Edit Profil",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_right_rounded,
                        color: Colors.white,
                      ),
                      onTap: () {},
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    child: ListTile(
                      leading: Icon(
                        Icons.exit_to_app_outlined,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Keluar",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_right_rounded,
                        color: Colors.white,
                      ),
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
// import 'package:flutter/material.dart';

// class ProfileScreen extends StatefulWidget {
//   const ProfileScreen({super.key});

//   @override
//   State<ProfileScreen> createState() => _ProfileScreenState();
// }

// class _ProfileScreenState extends State<ProfileScreen> {
//   @override
//   Widget build(BuildContext context) {
//     // final _width = MediaQuery.of(context).size.width;

//     return Container(
//       child: Stack(
//         children: <Widget>[
//           Container(
//             decoration: const BoxDecoration(
//               color: Color(0xffC21010),
//             ),
//           ),
//           Scaffold(
//             backgroundColor: Colors.transparent,
//             body: Container(
//               child: Stack(
//                 children: <Widget>[
//                   Align(
//                     alignment: Alignment.center,
//                     child: Padding(
//                       padding: EdgeInsets.only(top: _height / 15),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: <Widget>[
//                           CircleAvatar(
//                             backgroundImage:
//                                 const AssetImage('assets/profile_img.jpeg'),
//                             radius: _height / 10,
//                           ),
//                           SizedBox(
//                             height: _height / 30,
//                           ),
//                           const Text(
//                             'Tamara',
//                             style: TextStyle(
//                                 fontSize: 18.0,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(top: _height / 2.2),
//                     child: Container(
//                       color: Colors.white,
//                     ),
//                   ),
//                   //
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   // Widget headerChild(String header, int value) => Expanded(
//   //       child: Column(
//   //         children: <Widget>[
//   //           Text(header),
//   //           const SizedBox(
//   //             height: 8.0,
//   //           ),
//   //           Text(
//   //             '$value',
//   //             style: const TextStyle(
//   //               fontSize: 14.0,
//   //               color: Color(0xFF26CBE6),
//   //               fontWeight: FontWeight.bold,
//   //             ),
//   //           )
//   //         ],
//   //       ),
//   //     );
// }
