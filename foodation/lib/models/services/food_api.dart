import 'package:dio/dio.dart';
import 'package:foodation/models/food_model.dart';

class FoodApi {
  final Dio dio = Dio();
  final String apiKey = 'aa473a61fc1044d5b93eed85f45e8362';
  Future<List<Food>> getFoods(List<String> ingredients) async {
    final response = await dio.get(
        'https://api.spoonacular.com/recipes/findByIngredients',
        queryParameters: {
          'apiKey': apiKey,
          'ingredients': ingredients.join(',')
        });

    List<Food> foods = (response.data as List)
        .map((e) => Food(
              id: e['id'],
              title: e['title'],
              image: e['image'],
            ))
        .toList();
    return foods;
  }
}
// class FoodViewModel extends ChangeNotifier {
//   List<Food> _foods = [];
//   List<Food> get foods => _foods;

//   // Metode untuk mendapatkan makanan berdasarkan daftar bahan
//   getFoodsByIngredients(List<String> ingredients) async {
//     final f = await FoodApi().getFoods(ingredients);
//     _foods = f;
//     notifyListeners();
//   }
// }

// final Dio dio = Dio();
// String apiKey = 'aa473a61fc1044d5b93eed85f45e8362';
// String url =
//     'https://api.spoonacular.com/recipes/findByIngredients?ingredients=${ingredients.join(',')}&apiKey=$apiKey';

// class FoodApi {
//   final Dio _dio = Dio();
//   final String apiKey = 'aa473a61fc1044d5b93eed85f45e8362';

//   Future<List<Food>> getFoods() async {
//     List<Food> foods = [];

//     try {
//       Response response = await _dio.get(
//         'https://api.spoonacular.com/recipes/findByIngredients',
//         queryParameters: {
//           'number': 10, // Jumlah resep yang ingin Anda dapatkan
//           'apiKey': apiKey,
//         },
//       );

//       // Ambil data dari response dan konversi menjadi objek Food
//       List<dynamic> FoodData = response.data['Foods'];
//       foods = FoodData.map((json) => Food(
//             id: json['id'],
//             title: json['title'],
//             image: json['image'],
//           )).toList();
//     } catch (error) {
//       print('Error: $error');
//     }

//     return foods;
//   }
// }


// abstract class ServicesApi {
//   static Future<Food?> getFood(String ingredients) async {
//     try {
//       var response = await dio.get(
//           'https://api.spoonacular.com/recipes/findByIngredients?apiKey=aa473a61fc1044d5b93eed85f45e8362&$ingredients');

//       if (response.statusCode == 200) {
//         var foodData = response.data[ingredients];
//         Food food = Food.fromJson(foodData);
//         return food;
//       } else {
//         print('Failed to load data: ${response.statusCode}');
//         return null;
//       }
//     } catch (e) {
//       print('Error: $e');
//       return null;
//     }
//   }
// }

    // String url = 'https://api.spoonacular.com/recipes/findByIngredients?';
    // var apiKey = 'aa473a61fc1044d5b93eed85f45e8362';
    // var query = '';

// class Food {
//   final int id;
//   final String title;
//   final String image;
//   final int usedIngredientCount;
//   final int missedIngredientCount;

//   Food({
//     required this.id,
//     required this.title,
//     required this.image,
//     required this.usedIngredientCount,
//     required this.missedIngredientCount,
//   });
// }
//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'id': id,
//       'title': title,
//       'image': image,
//       'usedIngredientCount': usedIngredientCount,
//       'missedIngredientCount': missedIngredientCount,
//       'missedIngredients': missedIngredients.map((x) => x.toMap()).toList(),
//       'usedIngredients': usedIngredients.map((x) => x.toMap()).toList(),
//       'unusedIngredients': unusedIngredients.map((x) => x.toMap()).toList(),
//       'likes': likes,
//     };
//   }

//   factory Food.fromMap(Map<String, dynamic> map) {
//     return Food(
//       id: map['id'] as int,
//       title: map['title'] as String,
//       image: map['image'] as String,
//       usedIngredientCount: map['usedIngredientCount'] as int,
//       missedIngredientCount: map['missedIngredientCount'] as int,
//       missedIngredients: List<SedIngredient>.from(
//         (map['missedIngredients'] as List<int>).map<SedIngredient>(
//           (x) => SedIngredient.fromMap(x as Map<String, dynamic>),
//         ),
//       ),
//       usedIngredients: List<SedIngredient>.from(
//         (map['usedIngredients'] as List<int>).map<SedIngredient>(
//           (x) => SedIngredient.fromMap(x as Map<String, dynamic>),
//         ),
//       ),
//       unusedIngredients: List<SedIngredient>.from(
//         (map['unusedIngredients'] as List<int>).map<SedIngredient>(
//           (x) => SedIngredient.fromMap(x as Map<String, dynamic>),
//         ),
//       ),
//       likes: map['likes'] as int,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Food.fromJson(String source) =>
//       Food.fromMap(json.decode(source) as Map<String, dynamic>);
// }

// // enum ImageType {
// //     JPG
// // }

// class SedIngredient {
//   final int id;
//   final double amount;
//   final String unit;
//   final String unitLong;
//   final String unitShort;
//   final String aisle;
//   final String name;
//   final String original;
//   final String originalName;
//   final List<String> meta;
//   final String image;
//   final String extendedName;

//   SedIngredient({
//     required this.id,
//     required this.amount,
//     required this.unit,
//     required this.unitLong,
//     required this.unitShort,
//     required this.aisle,
//     required this.name,
//     required this.original,
//     required this.originalName,
//     required this.meta,
//     required this.image,
//     required this.extendedName,
//   });
// }
