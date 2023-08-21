import 'package:sqflite/sqflite.dart';


void dbconnection() async {
var db = await openDatabase('my_db.db');

// Get a location using getDatabasesPath
var databasesPath = await getDatabasesPath();


// Delete the database
await deleteDatabase(databasesPath);

Database database = await openDatabase(databasesPath, version: 1,
    onCreate: (Database db, int version) async {
  // When creating the db, create the table
  await db.execute(
      'CREATE TABLE Test (id INTEGER PRIMARY KEY, name TEXT, value INTEGER, num REAL)');
});

await database.transaction((txn) async {
  int id1 = await txn.rawInsert(
      'INSERT INTO Test(name, value, num) VALUES("some name", 1234, 456.789)');
  print('inserted1: $id1');
  int id2 = await txn.rawInsert(
      'INSERT INTO Test(name, value, num) VALUES(?, ?, ?)',
      ['another name', 12345678, 3.1416]);
  print('inserted2: $id2');
});


}

