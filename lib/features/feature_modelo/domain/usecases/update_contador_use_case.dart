import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/contador_entity.dart';
import '../repositories/contador_repository.dart';

class UpdateContadorUseCase {
  final ContadorRepository _repository;

  UpdateContadorUseCase(this._repository);

  Future<Either<Failure, Unit>> call(UpdateContadorParams params) async {
    if (params.nome.isEmpty) return Left(ErroInesperadoFailure('Nome não pode estar vazio'));
    if (params.id.isEmpty) return Left(ErroInesperadoFailure('ID do contador não existe'));

    final editadoEm = DateTime.now();

    final contador = ContadorEntity(
      id: params.id,
      nome: params.nome,
      valorAtual: params.valorAtual,
      incremento: params.incremento,
      decremento: params.decremento,
      criadoEm: params.criadoEm,
      editadoEm: editadoEm
    );

    return _repository.insert(contador);
  }
}

class UpdateContadorParams {
  final String id;
  final String nome;
  final int? valorAtual;
  final int incremento;
  final int decremento;
  final int? valorMinimo;
  final int? valorMaximo;
  final int? meta;
  final DateTime criadoEm;

  UpdateContadorParams({
    required this.id,
    required this.nome,
    this.valorAtual,
    required this.incremento,
    required this.decremento,
    this.valorMinimo,
    this.valorMaximo,
    this.meta,
    required this.criadoEm,
  });
}
