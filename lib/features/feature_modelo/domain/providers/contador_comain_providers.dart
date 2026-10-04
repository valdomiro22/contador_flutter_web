import 'package:contador/features/feature_modelo/data/providers/contador_data_providers.dart';
import 'package:contador/features/feature_modelo/domain/usecases/get_all_contadores_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../usecases/delete_one_contador_use_case.dart';
import '../usecases/get_one_contador_use_case.dart';
import '../usecases/insert_contador_use_case.dart';
import '../usecases/update_contador_use_case.dart';

part 'contador_comain_providers.g.dart';

@riverpod
InsertContadorUseCase insertContadorUseCase(Ref ref) {
  final contadorRepository = ref.read(contadorRepositoryProvider);
  return InsertContadorUseCase(contadorRepository);
}

@riverpod
UpdateContadorUseCase updateContadorUseCase(Ref ref) {
  final contadorRepository = ref.read(contadorRepositoryProvider);
  return UpdateContadorUseCase(contadorRepository);
}

@riverpod
GetOneContadorUseCase getOneContadorUseCase(Ref ref) {
  final contadorRepository = ref.read(contadorRepositoryProvider);
  return GetOneContadorUseCase(contadorRepository);
}

@riverpod
DeleteOneContadorUseCase deleteOneContadorUseCase(Ref ref) {
  final contadorRepository = ref.read(contadorRepositoryProvider);
  return DeleteOneContadorUseCase(contadorRepository);
}

@riverpod
GetAllContadoresUseCase getAllContadoresUseCase(Ref ref) {
  final contadorRepository = ref.read(contadorRepositoryProvider);
  return GetAllContadoresUseCase(contadorRepository);
}
