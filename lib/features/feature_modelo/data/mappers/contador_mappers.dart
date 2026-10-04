import 'package:contador/features/feature_modelo/data/models/contador_model.dart';
import 'package:contador/features/feature_modelo/domain/entities/contador_entity.dart';

extension ContadorModelMapper on ContadorModel {
  ContadorEntity toEntity() {
    return ContadorEntity(
      id: id,
      nome: nome,
      valorAtual: valorAtual,
      incremento: incremento,
      decremento: decremento,
      valorMinimo: valorMinimo,
      valorMaximo: valorMaximo,
      meta: meta,
      mostrarBotaoReset: mostrarBotaoReset,
      mostrarBotaoEditar: mostrarBotaoEditar,
      subtracaoComoPrincipal: subtracaoComoPrincipal,
      mostrarLimites: mostrarLimites,
      confirmarAntesResetar: confirmarAntesResetar,
      efeitoVisualAoClicar: efeitoVisualAoClicar,
      displayComBackground: displayComBackground,
      criadoEm: criadoEm,
      editadoEm: editadoEm,
    );
  }
}

extension ContadorEntityMapper on ContadorEntity {
  ContadorModel toModel() {
    return ContadorModel(
      id: id,
      nome: nome,
      valorAtual: valorAtual,
      incremento: incremento,
      decremento: decremento,
      valorMinimo: valorMinimo,
      valorMaximo: valorMaximo,
      meta: meta,
      mostrarBotaoReset: mostrarBotaoReset,
      mostrarBotaoEditar: mostrarBotaoEditar,
      subtracaoComoPrincipal: subtracaoComoPrincipal,
      mostrarLimites: mostrarLimites,
      confirmarAntesResetar: confirmarAntesResetar,
      efeitoVisualAoClicar: efeitoVisualAoClicar,
      displayComBackground: displayComBackground,
      criadoEm: criadoEm,
      editadoEm: editadoEm,
    );
  }
}
