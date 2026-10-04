class ContadorTable {
static const String tableName = 'contador';

static const String id = 'id';
static const String nome = 'nome';
static const String valorAtual = 'valor_atual';
static const String incremento = 'incremento';
static const String decremento = 'decremento';
static const String valorMinimo = 'valor_minimo';
static const String valorMaximo = 'valor_maximo';
static const String meta = 'meta';
static const String mostrarBotaoReset = 'mostrar_botao_reset';
static const String mostrarBotaoEditar = 'mostrar_botao_editar';
static const String subtracaoComoPrincipal = 'subtracao_como_principal';
static const String mostrarLimites = 'mostrar_limites';
static const String confirmarAntesResetar = 'confirmar_antes_resetar';
static const String efeitoVisualAoClicar = 'efeito_visual_ao_clicar';
static const String displayComBackground = 'display_com_background';
static const String criadoEm = 'criado_em';
static const String editadoEm = 'editado_em';

static const String createTable = '''
    CREATE TABLE $tableName (
      $id TEXT PRIMARY KEY,
      $nome TEXT NOT NULL,
      $valorAtual INTEGER NOT NULL,
      $incremento INTEGER NOT NULL,
      $decremento INTEGER NOT NULL,
      $valorMinimo INTEGER,
      $valorMaximo INTEGER,
      $meta INTEGER,
      $mostrarBotaoReset INTEGER NOT NULL,
      $mostrarBotaoEditar INTEGER NOT NULL,
      $subtracaoComoPrincipal INTEGER NOT NULL,
      $mostrarLimites INTEGER NOT NULL,
      $confirmarAntesResetar INTEGER NOT NULL,
      $efeitoVisualAoClicar INTEGER NOT NULL,
      $displayComBackground INTEGER NOT NULL,
      $criadoEm INTEGER NOT NULL,
      $editadoEm INTEGER
    )
  ''';
}