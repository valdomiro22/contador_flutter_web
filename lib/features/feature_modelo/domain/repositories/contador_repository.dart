import 'package:contador/features/feature_modelo/domain/entities/contador_entity.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';

abstract class ContadorRepository {
  Future<Either<Failure, Unit>> insert(ContadorEntity contador);

  Future<Either<Failure, Unit>> update(ContadorEntity contador);

  Future<Either<Failure, Unit>> delete(ContadorEntity contador);

  Future<Either<Failure, List<ContadorEntity>>> getAll();

  Future<Either<Failure, ContadorEntity?>> getOneById(String contadorId);
}
