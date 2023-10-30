import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              color: Color(0xffC21010),
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(top: _height / 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage:
                                const AssetImage('assets/profile_img.jpeg'),
                            radius: _height / 10,
                          ),
                          SizedBox(
                            height: _height / 30,
                          ),
                          const Text(
                            'Tamara',
                            style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: _height / 2.2),
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                  //
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget headerChild(String header, int value) => Expanded(
  //       child: Column(
  //         children: <Widget>[
  //           Text(header),
  //           const SizedBox(
  //             height: 8.0,
  //           ),
  //           Text(
  //             '$value',
  //             style: const TextStyle(
  //               fontSize: 14.0,
  //               color: Color(0xFF26CBE6),
  //               fontWeight: FontWeight.bold,
  //             ),
  //           )
  //         ],
  //       ),
  //     );
}
