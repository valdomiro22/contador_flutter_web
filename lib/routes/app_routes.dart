import 'package:contador/features/feature_modelo/presentation/screens/listar/listar_contadores_screen.dart';
import 'package:contador/features/home/home_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../features/feature_modelo/presentation/screens/adicionar/adicionar_contador_screen.dart';
import 'app_routes_names.dart';

class AppRoutes {
  static final List<RouteBase> routes = [
    GoRoute(
      path: '${AppRoutesNames.home}/:contadorId',
      builder: (context, state) {
        final contadorId = state.pathParameters['contadorId']!;
        return HomeScreen(contadorId: contadorId);
      },
    ),

    // Produto
    GoRoute(
      path: AppRoutesNames.adicionarContador,
      builder: (context, state) => AdicionarContadorScreen(),
    ),

    GoRoute(
      path: AppRoutesNames.listaContadors,
      builder: (context, state) => ListarContadoresScreen(),
    ),

    // GoRoute(
    //   path: AppRoutesNames.filtrarPorCategoria,
    //   builder: (context, state) => FiltrarPorCategoriaScreen(),
    // ),

    // GoRoute(
    //   path: AppRoutesNames.adicionarProduto,
    //   builder: (context, state) => AdicionarProdutoScreen(),
    // ),


    // GoRoute(
    //   path: '${AppRoutesNames.detalhesProduto}/:produtoId',
    //   builder: (context, state) {
    //     final produtoId = state.pathParameters['produtoId']!;
    //     return DetalhesProdutoScreen(produtoId: produtoId);
    //   },
    // ),

    // GoRoute(
    //   path: '${AppRoutesNames.configuracoes}/:contadorId',
    //   builder: (context, state) {
    //     final contadorId = state.pathParameters['contadorId']!;

    //     return ConfiguracoesScreen(contadorId: contadorId);
    //   },
    // ),

    // GoRoute(
    //   path: AppRoutesNames.criarContador,
    //   builder: (context, state) => AdicionarContadorScreen(),
    // ),

    // GoRoute(
    //   path: '${AppRoutesNames.home}/:contadorId',
    //   builder: (context, state) {
    //     final contadorId = state.pathParameters['contadorId']!;

    //     return HomeContadorScreen(contadorId: contadorId);
    //   },
    // ),

    // GoRoute(
    //   path: '${AppRoutesNames.listaQuantidades}/:contadorId',
    //   builder: (context, state) {
    //     final contadorId = state.pathParameters['contadorId']!;

    //     return ListaQuantidadesScreen(contadorId: contadorId);
    //   },
    // ),

    // GoRoute(
    //   path: '${AppRoutesNames.detalhesContador}/:contadorId',
    //   builder: (context, state) {
    //     final contadorId = state.pathParameters['contadorId']!;

    //     return DetalhesContadorScreen(contadorId: contadorId);
    //   },
    // ),
  ];
}

// Provider
final appRoutesProvider = Provider<GoRouter>((ref) {
  return GoRouter(initialLocation: AppRoutesNames.listaContadors, routes: AppRoutes.routes);
});
