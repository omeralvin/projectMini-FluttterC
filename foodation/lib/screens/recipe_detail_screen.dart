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
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        'https://picsum.photos/seed/610/690',
                        width: double.infinity,
                        height: 300,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Center(
                      child: Container(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            const Text(
                              'Coding bootcamp pernghasil Programmer dengan kualitas tinggi di indonesia',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 24,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const Text(
                              'Alterra Academy adalah cooding bootcamp indonesia untuk semua orang, baik dengan background IT & non-IT unutk menjadi programmer dengan kualitas terbaik di industri saat ini.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            const SizedBox(height: 10.0),
                            ElevatedButton(
                                onPressed: () {},
                                child: const Text("Pelajari Lebih Lanjut"))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
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
