import 'package:contador/features/feature_modelo/data/dao/shared_preferences_app.dart';
import 'package:contador/features/feature_modelo/data/localdatasource/contador_local_data_source.dart';
import 'package:contador/features/feature_modelo/data/localdatasource/contador_local_data_source_impl.dart';
import 'package:contador/features/feature_modelo/data/repositories/contador_repository_impl.dart';
import 'package:contador/features/feature_modelo/domain/repositories/contador_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'contador_data_providers.g.dart';

@riverpod
SharedPreferencesApp sharedPreferencesApp(Ref ref) {
  return SharedPreferencesApp();
}

@riverpod
ContadorLocalDataSource contadorLocalDataSource(Ref ref) {
  final dao = ref.watch(sharedPreferencesAppProvider);
  return ContadorLocalDataSourceImpl(dao);
}

@riverpod
ContadorRepository contadorRepository(Ref ref) {
  final dataSource = ref.watch(contadorLocalDataSourceProvider);
  return ContadorRepositoryImpl(dataSource);
}