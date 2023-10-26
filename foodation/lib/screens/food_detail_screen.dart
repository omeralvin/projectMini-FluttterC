import 'package:flutter/material.dart';

class FoodDetail extends StatelessWidget {
  const FoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                Container(
                  height: 250.0,
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    // image: DecorationImage(
                    //   image: AssetImage(),
                    // ),
                  ),
                ),
                const Text('The Paragraf'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
