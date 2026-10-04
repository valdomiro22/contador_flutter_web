import 'package:flutter/material.dart';

class ErroScreen extends StatelessWidget {
  final String mensagemErro;

  const ErroScreen({super.key, required this.mensagemErro});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Erro')),
      body: Center(
        child: Text(
          mensagemErro,
          style: TextStyle(color: Colors.red),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
