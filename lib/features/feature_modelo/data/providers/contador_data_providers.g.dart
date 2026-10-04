// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contador_data_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(sharedPreferencesApp)
final sharedPreferencesAppProvider = SharedPreferencesAppProvider._();

final class SharedPreferencesAppProvider
    extends
        $FunctionalProvider<
          SharedPreferencesApp,
          SharedPreferencesApp,
          SharedPreferencesApp
        >
    with $Provider<SharedPreferencesApp> {
  SharedPreferencesAppProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sharedPreferencesAppProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sharedPreferencesAppHash();

  @$internal
  @override
  $ProviderElement<SharedPreferencesApp> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SharedPreferencesApp create(Ref ref) {
    return sharedPreferencesApp(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SharedPreferencesApp value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SharedPreferencesApp>(value),
    );
  }
}

String _$sharedPreferencesAppHash() =>
    r'eaac76727ff613cebf42cc9d38d1c9d27f1a80e8';

@ProviderFor(contadorLocalDataSource)
final contadorLocalDataSourceProvider = ContadorLocalDataSourceProvider._();

final class ContadorLocalDataSourceProvider
    extends
        $FunctionalProvider<
          ContadorLocalDataSource,
          ContadorLocalDataSource,
          ContadorLocalDataSource
        >
    with $Provider<ContadorLocalDataSource> {
  ContadorLocalDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'contadorLocalDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$contadorLocalDataSourceHash();

  @$internal
  @override
  $ProviderElement<ContadorLocalDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ContadorLocalDataSource create(Ref ref) {
    return contadorLocalDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ContadorLocalDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ContadorLocalDataSource>(value),
    );
  }
}

String _$contadorLocalDataSourceHash() =>
    r'bb0456dd38c03292482619410dd4e8e518b4e3fe';

@ProviderFor(contadorRepository)
final contadorRepositoryProvider = ContadorRepositoryProvider._();

final class ContadorRepositoryProvider
    extends
        $FunctionalProvider<
          ContadorRepository,
          ContadorRepository,
          ContadorRepository
        >
    with $Provider<ContadorRepository> {
  ContadorRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'contadorRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$contadorRepositoryHash();

  @$internal
  @override
  $ProviderElement<ContadorRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ContadorRepository create(Ref ref) {
    return contadorRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ContadorRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ContadorRepository>(value),
    );
  }
}

String _$contadorRepositoryHash() =>
    r'40e55a8c9b5b8cd3c85b47fc5ef6670ec2b74864';
