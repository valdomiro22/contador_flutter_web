class ContadorModel {
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

  const ContadorModel({
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

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'valorAtual': valorAtual,
      'incremento': incremento,
      'decremento': decremento,
      'valorMinimo': valorMinimo,
      'valorMaximo': valorMaximo,
      'meta': meta,
      'mostrarBotaoReset': mostrarBotaoReset,
      'mostrarBotaoEditar': mostrarBotaoEditar,
      'subtracaoComoPrincipal': subtracaoComoPrincipal,
      'mostrarLimites': mostrarLimites,
      'confirmarAntesResetar': confirmarAntesResetar,
      'efeitoVisualAoClicar': efeitoVisualAoClicar,
      'displayComBackground': displayComBackground,
      'criadoEm': criadoEm.millisecondsSinceEpoch,
      'editadoEm': editadoEm?.millisecondsSinceEpoch,
    };
  }

  factory ContadorModel.fromMap(Map<String, dynamic> map) {
    return ContadorModel(
      id: map['id'] as String,
      nome: map['nome'] as String,
      valorAtual: map['valorAtual'] as int,
      incremento: map['incremento'] as int,
      decremento: map['decremento'] as int,

      valorMinimo: map['valorMinimo'] as int?,
      valorMaximo: map['valorMaximo'] as int?,
      meta: map['meta'] as int?,

      mostrarBotaoReset: map['mostrarBotaoReset'] as bool,
      mostrarBotaoEditar: map['mostrarBotaoEditar'] as bool,
      subtracaoComoPrincipal: map['subtracaoComoPrincipal'] as bool,
      mostrarLimites: map['mostrarLimites'] as bool,
      confirmarAntesResetar: map['confirmarAntesResetar'] as bool,
      efeitoVisualAoClicar: map['efeitoVisualAoClicar'] as bool,
      displayComBackground: map['displayComBackground'] as bool,

      criadoEm: DateTime.fromMillisecondsSinceEpoch(map['criadoEm'] as int),

      editadoEm: map['editadoEm'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['editadoEm'] as int)
          : null,
    );
  }

  ContadorModel copyWith({
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
    return ContadorModel(
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
