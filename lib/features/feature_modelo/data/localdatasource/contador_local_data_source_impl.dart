import 'dart:developer' as dev;

import 'package:contador/features/feature_modelo/data/dao/shared_preferences_app.dart';
import 'package:contador/features/feature_modelo/data/localdatasource/contador_local_data_source.dart';

import '../../../../core/error/app_database_exception.dart';
import '../models/contador_model.dart';

class ContadorLocalDataSourceImpl implements ContadorLocalDataSource {
  // final ContadorDao _dao;
  final SharedPreferencesApp _dao;

  ContadorLocalDataSourceImpl(this._dao);

  @override
  Future<void> delete(ContadorModel contador) async {
    try {
      return await _dao.delete(contador);
    } catch (e, stackTrace) {
      dev.log(
        'contadorLocalDataSourceImpl: delete: Erro ao deletar contador no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
      throw AppDatabaseException(
        'Erro ao deletar contador no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<List<ContadorModel>> getAll() async {
    try {
      return await _dao.getAll();
    } catch (e, stackTrace) {
      dev.log(
        'contadorLocalDataSourceImpl: getAll: Erro ao buscar todos os contadors no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
      throw AppDatabaseException(
        'Erro ao buscar todos os contadors no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<ContadorModel?> getOneById(String contadorId) async {
    try {
      return await _dao.getOneById(contadorId);
    } catch (e, stackTrace) {
      dev.log(
        'contadorLocalDataSourceImpl: getOneById: Erro ao buscar contador no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
      throw AppDatabaseException(
        'Erro ao buscar contador no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<void> insert(ContadorModel contador) async {
    try {
      return await _dao.insert(contador);
    } catch (e, stackTrace) {
      dev.log(
        'contadorLocalDataSourceImpl: insert: Erro ao salvar contador no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
      throw AppDatabaseException(
        'Erro ao salvar contador no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<void> update(ContadorModel contador) async {
    try {
      await _dao.update(contador);
    } catch (e, stackTrace) {
      dev.log(
        'contadorLocalDataSourceImpl: update: Erro ao atualizar contador no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
      throw AppDatabaseException(
        'Erro ao atualizar contador no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }
}
