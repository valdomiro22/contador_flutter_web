import 'package:flutter/material.dart';

class CarregandoComponent extends StatelessWidget {
  const CarregandoComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 16),
      child: Center(
          child: CircularProgressIndicator(color: Colors.teal)
      ),
    );
  }
}
