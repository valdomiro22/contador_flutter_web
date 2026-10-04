import 'package:contador/features/feature_modelo/data/database/contador_table.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class AppDatabase {
  AppDatabase._();

  static final AppDatabase instance = AppDatabase._();
  static Database? _database;

  static const nomeBanco = 'contador_database.db';

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, nomeBanco);

    return openDatabase(
      path,
      version: 1,
      onConfigure: (db) async {
        await db.execute('PRAGMA foreign_keys = ON');
      },
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute(ContadorTable.createTable);
    // await db.execute(EnderecoTable.createTable);
    // await db.execute(EntregaTable.createTable);
    // await db.execute(TableComprovante.createTable);
  }
}

// Provider
final appDatabaseProvider = Provider<AppDatabase>((ref) {
  return AppDatabase.instance;
});
