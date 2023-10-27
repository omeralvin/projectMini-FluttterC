import 'dart:convert';

class Food {
  final int id;
  final String title;
  final String image;

  Food({
    required this.id,
    required this.title,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'image': image,
    };
  }

  factory Food.fromMap(Map<String, dynamic> map) {
    return Food(
      id: map['id'] as int,
      title: map['title'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Food.fromJson(String source) =>
      Food.fromMap(json.decode(source) as Map<String, dynamic>);
}

// class Food {
//     final int id;
//     final String title;
//     final String image;
//     final ImageType imageType;
//     final int usedIngredientCount;
//     final int missedIngredientCount;
//     final List<SedIngredient> missedIngredients;
//     final List<SedIngredient> usedIngredients;
//     final List<SedIngredient> unusedIngredients;
//     final int likes;

//     Food({
//         required this.id,
//         required this.title,
//         required this.image,
//         required this.imageType,
//         required this.usedIngredientCount,
//         required this.missedIngredientCount,
//         required this.missedIngredients,
//         required this.usedIngredients,
//         required this.unusedIngredients,
//         required this.likes,
//     });

// }

// enum ImageType {
//     JPG
// }

// class SedIngredient {
//     final int id;
//     final double amount;
//     final String unit;
//     final String unitLong;
//     final String unitShort;
//     final String aisle;
//     final String name;
//     final String original;
//     final String originalName;
//     final List<String> meta;
//     final String image;
//     final String extendedName;

//     SedIngredient({
//         required this.id,
//         required this.amount,
//         required this.unit,
//         required this.unitLong,
//         required this.unitShort,
//         required this.aisle,
//         required this.name,
//         required this.original,
//         required this.originalName,
//         required this.meta,
//         required this.image,
//         required this.extendedName,
//     });

// }
