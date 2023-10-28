import 'dart:io' as io;
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import '../models/user_model.dart';

class DbHelper {
  static Database? _db;
  static const String dbName = 'foodation.db';
  static const String tableUser = 'user';
  static const int version = 1;

  static const String cid = 'id';
  static const String cname = 'name';
  static const String cusername = 'username';
  static const String cpassword = 'password';

  Future<Database> get db async {
    if (_db != null) {
      return _db!;
    }
    _db = await initDb();
    return _db!;
  }

  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, dbName);
    var db = await openDatabase(path, version: version, onCreate: _onCreate);
    return db;
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
    CREATE TABLE $tableUser (
      $cid INTEGER PRIMARY KEY AUTOINCREMENT,
      $cname TEXT,
      $cusername TEXT,
      $cpassword TEXT
    )
  ''');
  }

  Future<int> saveData(UserModel user) async {
    var dbClient = await db;
    var res = await dbClient.insert(tableUser, user.toMap());
    return res;
  }

  Future<UserModel?> getLoginUser(String username, String password) async {
    var dbClient = await db;
    var res = await dbClient.rawQuery(
        "SELECT * FROM $tableUser WHERE $cusername = ? AND $cpassword = ?",
        [username, password]);

    if (res.isNotEmpty) {
      return UserModel.fromMap(res.first);
    }

    return null;
  }
}
