import 'package:contador/features/feature_modelo/data/database/contador_table.dart';
import 'package:sqflite/sqflite.dart';

import '../../../../core/database/app_database.dart';
import '../models/contador_model.dart';

class ContadorDao {
  final AppDatabase _database;

  ContadorDao(this._database);

  Future<void> insert(ContadorModel contador) async {
    final db = await _database.database;

    await db.insert(
      ContadorTable.tableName,
      contador.toMap(),
      conflictAlgorithm: ConflictAlgorithm.abort,
    );
  }

  Future<void> update(ContadorModel contador) async {
    final db = await _database.database;

    await db.update(
      ContadorTable.tableName,
      contador.toMap(),
      where: '${ContadorTable.id} = ?',
      whereArgs: [contador.id],
    );
  }

  Future<void> delete(ContadorModel contador) async {
    final db = await _database.database;

    await db.delete(
      ContadorTable.tableName,
      where: '${ContadorTable.id} = ?',
      whereArgs: [contador.id],
    );
  }

  Future<List<ContadorModel>> getAll() async {
    final db = await _database.database;

    final result = await db.query(
      ContadorTable.tableName,
      orderBy: '${ContadorTable.criadoEm} ASC',
    );
    return result.map(ContadorModel.fromMap).toList();
  }

  Future<ContadorModel?> getOneById(String contadorId) async {
    final db = await _database.database;

    final result = await db.query(
      ContadorTable.tableName,
      where: '${ContadorTable.id} = ?',
      whereArgs: [contadorId],
      limit: 1,
    );

    if (result.isEmpty) return null;
    return ContadorModel.fromMap(result.first);
  }
}
