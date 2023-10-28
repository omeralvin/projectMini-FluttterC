class UserModel {
  final int id;
  final String name;
  final String username;
  final String password;

  UserModel(
    this.id,
    this.name,
    this.username,
    this.password,
  );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'username': username,
      'password': password,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      map['id'] as int,
      map['name'] as String,
      map['username'] as String,
      map['password'] as String,
    );
  }
}
