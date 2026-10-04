import 'package:contador/common/components/custom_buttom_component.dart';
import 'package:contador/routes/app_routes_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            CustomButtonComponent(
              text: 'Adicionar Contador',
              onClick: () {
                context.push(AppRoutesNames.adicionarContador);
              },
            ),
            SizedBox(height: 16,),

            CustomButtonComponent(
              text: 'Lista de contadores',
              onClick: () {
                context.push(AppRoutesNames.listaContadors);
              },
            ),
          ],
        ),
      ),
    );
  }
}
