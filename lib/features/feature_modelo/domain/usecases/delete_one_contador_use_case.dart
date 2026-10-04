import 'package:contador/core/error/failure.dart';
import 'package:contador/features/feature_modelo/domain/entities/contador_entity.dart';
import 'package:contador/features/feature_modelo/domain/repositories/contador_repository.dart';
import 'package:dartz/dartz.dart';

class DeleteOneContadorUseCase {
  final ContadorRepository _repository;

  DeleteOneContadorUseCase(this._repository);

  Future<Either<Failure, Unit>> call(ContadorEntity contador) async {
    if (contador.id.isEmpty) {
      return Left(ErroInesperadoFailure('ID do contador não encontrado'));
    }

    return _repository.delete(contador);
  }
}
