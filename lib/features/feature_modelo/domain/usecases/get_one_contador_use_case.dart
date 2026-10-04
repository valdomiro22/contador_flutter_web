import 'package:contador/core/error/failure.dart';
import 'package:contador/features/feature_modelo/domain/entities/contador_entity.dart';
import 'package:contador/features/feature_modelo/domain/repositories/contador_repository.dart';
import 'package:dartz/dartz.dart';

class GetOneContadorUseCase {
  final ContadorRepository _repository;

  GetOneContadorUseCase(this._repository);

  Future<Either<Failure, ContadorEntity>> call(String contadorId) async {
    if (contadorId.isEmpty) return Left(ErroInesperadoFailure('Id do contador não encontrado'));

    final result = await _repository.getOneById(contadorId);
    return result.fold(
        (failure) => Left(failure),
        (contador) {
          if (contador == null) {
            return Left(ErroInesperadoFailure('Contador não encontrado'));
          }

          return Right(contador);
        }
    );
  }
}