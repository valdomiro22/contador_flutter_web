import 'package:contador/features/feature_modelo/domain/entities/contador_entity.dart';
import 'package:contador/features/feature_modelo/domain/repositories/contador_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';

class GetAllContadoresUseCase {
  final ContadorRepository _repository;

  GetAllContadoresUseCase(this._repository);

  Future<Either<Failure, List<ContadorEntity>>> call() async {
    return _repository.getAll();
  }
}
