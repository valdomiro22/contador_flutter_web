import 'dart:developer' as dev;

import 'package:intl/intl.dart';

String formatarComZeros(String numero, int tamanho) {
  return numero.padLeft(tamanho, '0');
}

String reduzirNome(String nome) {
  const limite = 24;
  if (nome.length <= limite) return nome;
  return '${nome.substring(0, limite)}...';
}

String formatarData(DateTime data) {
  final formatador = DateFormat.yMd('pt_BR');
  return formatador.format(data);
}

String? formatarDataString(String? data) {
  if (data == null) return null;
  final dataConvertida = DateTime.parse(data);
  return formatarData(dataConvertida);
}

String? formatarDataComPontos(String? data) {
  if (data == null) return null;
  final formatador = DateFormat('dd.MM.yyyy', 'pt_BR');
  final dataConvertida = DateTime.parse(data);
  return formatador.format(dataConvertida);
}

DateTime? stringParaDateTime(String data) {
  try {
    final formatador = DateFormat('dd/MM/yyyy', 'pt_BR');
    return formatador.parse(data);
  } catch (e) {
    dev.log('Erro ao converter String para DateTime: $e');
    return null;
  }
}

/// Ex: 00/00/0000 -> 00.00.0000
String formatarDataBarrasParaPontos(String data) {
  return data.replaceAll('/', '.');
}

String formatarHora(String data) {
  final formatador = DateFormat.Hms('pt_BR');
  final dataConvertida = DateTime.parse(data);
  return formatador.format(dataConvertida);
}

/// Converte toda uma String para LowerCase
String capitalize(String text) {
  if (text.isEmpty) return '';
  return '${text[0].toUpperCase()}${text.substring(1).toLowerCase()}';
}

String formatarHorario(DateTime data) {
  return DateFormat('HH:mm:ss', 'pt_BR').format(data);
}

String formatarHorarioComMilissegundos(DateTime data) {
  return DateFormat('HH:mm:ss:SSS', 'pt_BR').format(data);
}

/// Se a data estiver em String
String formatarHorarioDeString(String data) {
  final dataConvertida = DateTime.parse(data);
  return DateFormat('HH:mm:ss', 'pt_BR').format(dataConvertida);
}

/// Se a data estiver em String
String formatarHorarioComMilissegundosDeString(String data) {
  final dataConvertida = DateTime.parse(data);
  return DateFormat('HH:mm:ss:SSS', 'pt_BR').format(dataConvertida);
}

DateTime somenteDia(DateTime data) {
  return DateTime(
    data.year,
    data.month,
    data.day,
  );
}