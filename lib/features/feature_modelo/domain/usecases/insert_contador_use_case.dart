import 'package:contador/core/error/failure.dart';
import 'package:contador/features/feature_modelo/domain/entities/contador_entity.dart';
import 'package:contador/features/feature_modelo/domain/repositories/contador_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:uuid/uuid.dart';

class InsertContadorUseCase {
  final ContadorRepository _repository;

  InsertContadorUseCase(this._repository);

  Future<Either<Failure, Unit>> call(InsertContadorParams params) async {
    if (params.nome.isEmpty) return Left(ErroInesperadoFailure('Nome não pode estar vazio'));

    final idGerado = Uuid().v4();
    final criadoEm = DateTime.now();

    final contador = ContadorEntity(
      id: idGerado,
      nome: params.nome,
      valorAtual: params.valorAtual,
      incremento: params.incremento,
      decremento: params.decremento,
      meta: params.meta,
      criadoEm: criadoEm,
    );

    return _repository.insert(contador);
  }
}

class InsertContadorParams {
  final String nome;
  final int? valorAtual;
  final int incremento;
  final int decremento;
  final int? valorMinimo;
  final int? valorMaximo;
  final int? meta;

  InsertContadorParams({
    required this.nome,
    this.valorAtual = 0,
    required this.incremento,
    required this.decremento,
    this.valorMinimo = 0,
    this.valorMaximo,
    this.meta,
  });
}
