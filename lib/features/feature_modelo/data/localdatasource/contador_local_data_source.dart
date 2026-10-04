import 'package:contador/features/feature_modelo/data/models/contador_model.dart';

abstract class ContadorLocalDataSource {
  Future<void> insert(ContadorModel contador);

  Future<void> update(ContadorModel contador);

  Future<void> delete(ContadorModel contador);

  Future<List<ContadorModel>> getAll();

  Future<ContadorModel?> getOneById(String contadorId);
}
