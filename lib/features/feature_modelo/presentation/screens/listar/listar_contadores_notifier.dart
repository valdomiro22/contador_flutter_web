import 'package:contador/features/feature_modelo/domain/entities/contador_entity.dart';
import 'package:contador/features/feature_modelo/domain/providers/contador_comain_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'listar_contadores_notifier.g.dart';

@riverpod
class ListarContadoresNotifier extends _$ListarContadoresNotifier {

  @override
  Future<List<ContadorEntity>> build() => _buscarContadores();

  Future<List<ContadorEntity>> _buscarContadores() async {
    final useCase = ref.read(getAllContadoresUseCaseProvider);
    final result = await useCase();

    return result.fold(
        (failure) => throw Exception(failure),
        (listaContadores) => listaContadores,
    );
  }

  Future<void> deletarContador(ContadorEntity contador) async {
    final listaAnterior = state.value ?? [];

    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final useCase = ref.read(deleteOneContadorUseCaseProvider);
      final result = await useCase(contador);

      return result.fold(
          (failure) => throw Exception(failure),
          (_) => listaAnterior.where((item) => item.id != contador.id).toList(),
      );
    });
  }

  Future<void> recarregar() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(_buscarContadores);
  }
}
