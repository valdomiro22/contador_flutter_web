// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listar_contadores_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ListarContadoresNotifier)
final listarContadoresProvider = ListarContadoresNotifierProvider._();

final class ListarContadoresNotifierProvider
    extends
        $AsyncNotifierProvider<ListarContadoresNotifier, List<ContadorEntity>> {
  ListarContadoresNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'listarContadoresProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$listarContadoresNotifierHash();

  @$internal
  @override
  ListarContadoresNotifier create() => ListarContadoresNotifier();
}

String _$listarContadoresNotifierHash() =>
    r'a4a5a3ac0e8799a0d024c36de77c881bdf4cd078';

abstract class _$ListarContadoresNotifier
    extends $AsyncNotifier<List<ContadorEntity>> {
  FutureOr<List<ContadorEntity>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<List<ContadorEntity>>, List<ContadorEntity>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<ContadorEntity>>,
                List<ContadorEntity>
              >,
              AsyncValue<List<ContadorEntity>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
