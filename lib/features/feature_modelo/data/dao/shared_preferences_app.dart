import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../models/contador_model.dart';

class SharedPreferencesApp {
  static const String _prefixo = 'contador_';

  Future<void> insert(ContadorModel contador) async {
    final preferences = await SharedPreferences.getInstance();

    await preferences.setString('$_prefixo${contador.id}', jsonEncode(contador.toMap()));
  }

  Future<void> update(ContadorModel contador) async {
    final preferences = await SharedPreferences.getInstance();

    await preferences.setString('$_prefixo${contador.id}', jsonEncode(contador.toMap()));
  }

  Future<void> delete(ContadorModel contador) async {
    final preferences = await SharedPreferences.getInstance();

    await preferences.remove('$_prefixo${contador.id}');
  }

  Future<List<ContadorModel>> getAll() async {
    final preferences = await SharedPreferences.getInstance();

    final contadores = <ContadorModel>[];

    for (final key in preferences.getKeys()) {
      if (!key.startsWith(_prefixo)) {
        continue;
      }

      final json = preferences.getString(key);

      if (json == null) {
        continue;
      }

      final map = jsonDecode(json) as Map<String, dynamic>;

      contadores.add(ContadorModel.fromMap(map));
    }

    return contadores;
  }

  Future<ContadorModel?> getOneById(String contadorId) async {
    final preferences = await SharedPreferences.getInstance();

    final json = preferences.getString('$_prefixo$contadorId');

    if (json == null) {
      return null;
    }

    final map = jsonDecode(json) as Map<String, dynamic>;

    return ContadorModel.fromMap(map);
  }
}
