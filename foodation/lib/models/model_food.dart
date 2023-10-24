import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Food {
  final String title;
  final String image;
  final String cookTime;
  Food({
    required this.title,
    required this.image,
    required this.cookTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'image': image,
      'cookTime': cookTime,
    };
  }

  factory Food.fromMap(Map<String, dynamic> map) {
    return Food(
      title: map['title'] as String,
      image: map['image'] as String,
      cookTime: map['cookTime'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Food.fromJson(String source) =>
      Food.fromMap(json.decode(source) as Map<String, dynamic>);
}
