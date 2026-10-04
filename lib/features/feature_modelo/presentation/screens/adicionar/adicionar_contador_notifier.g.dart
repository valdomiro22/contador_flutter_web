// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adicionar_contador_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AdicionarContadorNotifier)
final adicionarContadorProvider = AdicionarContadorNotifierProvider._();

final class AdicionarContadorNotifierProvider
    extends
        $NotifierProvider<AdicionarContadorNotifier, AdicionarContadorState> {
  AdicionarContadorNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'adicionarContadorProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$adicionarContadorNotifierHash();

  @$internal
  @override
  AdicionarContadorNotifier create() => AdicionarContadorNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AdicionarContadorState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AdicionarContadorState>(value),
    );
  }
}

String _$adicionarContadorNotifierHash() =>
    r'8264121e17853cf905f56d1a118261575d50f619';

abstract class _$AdicionarContadorNotifier
    extends $Notifier<AdicionarContadorState> {
  AdicionarContadorState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AdicionarContadorState, AdicionarContadorState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AdicionarContadorState, AdicionarContadorState>,
              AdicionarContadorState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
