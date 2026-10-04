import 'package:contador/features/feature_modelo/presentation/components/item_contador_component.dart';
import 'package:contador/features/feature_modelo/presentation/screens/listar/listar_contadores_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../common/components/empty_list_component.dart';

class ListarContadoresScreen extends ConsumerWidget {
  const ListarContadoresScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(listarContadoresProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Lista de Contadores')),
      body: state.when(
        loading: () {
          return const Center(child: CircularProgressIndicator());
        },
        error: (error, stackTrace) {
          return Center(child: Text(error.toString().replaceFirst('Exception: ', '')));
        },
        data: (listaContadores) {
          if (listaContadores.isEmpty) {
            return const EmptyListComponent(mensagem: 'para adicionar um novo contador');
          }

          return ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 10),
            itemCount: listaContadores.length,
            itemBuilder: (context, index) {
              final contador = listaContadores[index];

              return ItemContadorComponent(
                contador: contador,
                onEdit: () {
                  // context.push('${AppRoutesNames.editarCliente}/${contador.id}');
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Editar'),
                      duration: Duration(seconds: 2),
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                },
                onDelete: () {
                  // ref.read(listaContadoresProvider.notifier).deletarCliente(contador);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Deletar'),
                      duration: Duration(seconds: 2),
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                },
                onCardClick: () {
                  // context.push('${AppRoutesNames.listaEntregasPorCliente}/${contador.id}');
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Clicado'),
                      duration: Duration(seconds: 2),
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
