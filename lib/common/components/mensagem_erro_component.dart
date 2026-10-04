import 'package:flutter/material.dart';

class MensagemErroComponent extends StatelessWidget {
  final String? mensagem;

  const MensagemErroComponent({super.key, required this.mensagem});

  @override
  Widget build(BuildContext context) {
    return Text(mensagem ?? '' , style: TextStyle(color: Colors.red));
  }
}
