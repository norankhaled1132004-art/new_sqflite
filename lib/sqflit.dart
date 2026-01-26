import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Sqldb {
  static Database? _db;

  Future<Database?> get db async {
    if (_db == null) {
      _db = await initialDb();
    }
    return _db;
  }

  Future<Database> initialDb() async {
    String databasepath = await getDatabasesPath();
    String path = join(databasepath, 'noor.db');

    Database mydb = await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );

    return mydb;
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE notes (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        note TEXT NOT NULL
      )
    ''');

    print("onCreate ==========");
  }

  Future<List<Map<String, dynamic>>> readData(String sql) async {
    Database? mydb = await db;
    return await mydb!.rawQuery(sql);
  }

  Future<int> insertData(String sql) async {
    Database? mydb = await db;
    return await mydb!.rawInsert(sql);
  }

  Future<int> updateData(String sql) async {
    Database? mydb = await db;
    return await mydb!.rawUpdate(sql);
  }

  Future<int> deleteData(String sql) async {
    Database? mydb = await db;
    return await mydb!.rawDelete(sql);
  }
}
