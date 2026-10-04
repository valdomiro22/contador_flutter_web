class ContadorEntity {
  final String id;
  final String nome;
  final int? valorAtual;
  final int incremento;
  final int decremento;
  final int? valorMinimo;
  final int? valorMaximo;
  final int? meta;
  final bool mostrarBotaoReset;
  final bool mostrarBotaoEditar;
  final bool subtracaoComoPrincipal;
  final bool mostrarLimites;
  final bool confirmarAntesResetar;
  final bool efeitoVisualAoClicar;
  final bool displayComBackground;
  final DateTime criadoEm;
  final DateTime? editadoEm;

  const ContadorEntity({
    required this.id,
    required this.nome,
    this.valorAtual = 0,
    required this.incremento,
    required this.decremento,
    this.valorMinimo = 0,
    this.valorMaximo,
    this.meta,
    this.mostrarBotaoReset = false,
    this.mostrarBotaoEditar = false,
    this.subtracaoComoPrincipal = false,
    this.mostrarLimites = false,
    this.confirmarAntesResetar = false,
    this.efeitoVisualAoClicar = false,
    this.displayComBackground = true,
    required this.criadoEm,
    this.editadoEm,
  });

  ContadorEntity copyWith({
    final String? id,
    final String? nome,
    final int? valorAtual,
    final int? incremento,
    final int? decremento,
    final int? valorMinimo,
    final int? valorMaximo,
    final int? meta,
    final bool? mostrarBotaoReset,
    final bool? mostrarBotaoEditar,
    final bool? subtracaoComoPrincipal,
    final bool? mostrarLimites,
    final bool? confirmarAntesResetar,
    final bool? efeitoVisualAoClicar,
    final bool? displayComBackground,
    final DateTime? criadoEm,
    final DateTime? editadoEm,
  }) {
    return ContadorEntity(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      valorAtual: valorAtual ?? this.valorAtual,
      incremento: incremento ?? this.incremento,
      decremento: decremento ?? this.decremento,
      valorMinimo: valorMinimo ?? this.valorMinimo,
      valorMaximo: valorMaximo ?? this.valorMaximo,
      meta: meta ?? this.meta,
      mostrarBotaoReset: mostrarBotaoReset ?? this.mostrarBotaoReset,
      mostrarBotaoEditar: mostrarBotaoEditar ?? this.mostrarBotaoEditar,
      subtracaoComoPrincipal: subtracaoComoPrincipal ?? this.subtracaoComoPrincipal,
      mostrarLimites: mostrarLimites ?? this.mostrarLimites,
      confirmarAntesResetar: confirmarAntesResetar ?? this.confirmarAntesResetar,
      efeitoVisualAoClicar: efeitoVisualAoClicar ?? this.efeitoVisualAoClicar,
      displayComBackground: displayComBackground ?? this.displayComBackground,
      criadoEm: criadoEm ?? this.criadoEm,
      editadoEm: editadoEm ?? this.editadoEm,
    );
  }
}
