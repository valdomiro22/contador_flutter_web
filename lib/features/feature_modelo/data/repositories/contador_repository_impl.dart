import 'dart:developer' as dev;

import 'package:contador/core/error/failure.dart';
import 'package:contador/features/feature_modelo/data/localdatasource/contador_local_data_source.dart';
import 'package:contador/features/feature_modelo/data/mappers/contador_mappers.dart';
import 'package:contador/features/feature_modelo/domain/entities/contador_entity.dart';
import 'package:contador/features/feature_modelo/domain/repositories/contador_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/app_database_exception.dart';

class ContadorRepositoryImpl implements ContadorRepository {
  final ContadorLocalDataSource _localDataSource;

  ContadorRepositoryImpl(this._localDataSource);

  @override
  Future<Either<Failure, Unit>> delete(ContadorEntity contador) async {
    try {
      final localModel = contador.toModel();
      await _localDataSource.delete(localModel);

      return const Right(unit);
    } on AppDatabaseException catch (e, stackTrace) {
      dev.log(
        'ClienteRepositoryImpl: delete: Erro inesperado ao deletar contador.',
        error: e,
        stackTrace: stackTrace,
      );

      return Left(DatabaseFailure(e.message));
    } catch (e, stackTrace) {
      dev.log(
        'ClienteRepositoryImpl: delete: Erro inesperado ao deletar contador.',
        error: e,
        stackTrace: stackTrace,
      );

      return const Left(ErroInesperadoFailure('Erro inesperado ao deletar contador.'));
    }
  }

  @override
  Future<Either<Failure, List<ContadorEntity>>> getAll() async {
    try {
      final localModels = await _localDataSource.getAll();
      final entities = localModels.map((model) => model.toEntity()).toList();

      return Right(entities);
    } on AppDatabaseException catch (e, stackTrace) {
      dev.log(
        'ClienteRepositoryImpl: getAll: Erro inesperado ao buscar Clientes.',
        error: e,
        stackTrace: stackTrace,
      );

      return Left(DatabaseFailure(e.message));
    } catch (e, stackTrace) {
      dev.log(
        'ClienteRepositoryImpl: getAll: Erro inesperado ao buscar Clientes.',
        error: e,
        stackTrace: stackTrace,
      );

      return const Left(ErroInesperadoFailure('Erro inesperado ao buscar Clientes.'));
    }
  }

  @override
  Future<Either<Failure, ContadorEntity?>> getOneById(String contadorId) async {
    try {
      final localModel = await _localDataSource.getOneById(contadorId);

      return Right(localModel?.toEntity());
    } on AppDatabaseException catch (e, stackTrace) {
      dev.log(
        'ClienteRepositoryImpl: getOneById: Erro inesperado ao buscar contador.',
        error: e,
        stackTrace: stackTrace,
      );

      return Left(DatabaseFailure(e.message));
    } catch (e, stackTrace) {
      dev.log(
        'ClienteRepositoryImpl: getOneById: Erro inesperado ao buscar contador.',
        error: e,
        stackTrace: stackTrace,
      );

      return const Left(ErroInesperadoFailure('Erro inesperado ao buscar contador.'));
    }
  }

  @override
  Future<Either<Failure, Unit>> insert(ContadorEntity contador) async {
    try {
      final localModel = contador.toModel();
      await _localDataSource.insert(localModel);

      return const Right(unit);
    } on AppDatabaseException catch (e, stackTrace) {
      dev.log(
        'ClienteRepositoryImpl: insert: Erro inesperado ao salvar contador.',
        error: e,
        stackTrace: stackTrace,
      );

      return Left(DatabaseFailure(e.message));
    } catch (e, stackTrace) {
      dev.log(
        'ClienteRepositoryImpl: insert: Erro inesperado ao salvar contador.',
        error: e,
        stackTrace: stackTrace,
      );

      return const Left(ErroInesperadoFailure('Erro inesperado ao salvar contador.'));
    }
  }

  @override
  Future<Either<Failure, Unit>> update(ContadorEntity contador) async {
    try {
      final localModel = contador.toModel();
      await _localDataSource.update(localModel);

      return const Right(unit);
    } on AppDatabaseException catch (e, stackTrace) {
      dev.log(
        'ClienteRepositoryImpl: update: Erro inesperado ao salvar contador.',
        error: e,
        stackTrace: stackTrace,
      );

      return Left(DatabaseFailure(e.message));
    } catch (e, stackTrace) {
      dev.log(
        'ClienteRepositoryImpl: update: Erro inesperado ao salvar contador.',
        error: e,
        stackTrace: stackTrace,
      );

      return const Left(ErroInesperadoFailure('Erro inesperado ao salvar contador.'));
    }
  }
}
