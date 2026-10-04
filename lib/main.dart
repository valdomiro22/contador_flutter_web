import 'package:contador/routes/app_routes.dart';
import 'package:contador/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRoutesProvider);

    return MaterialApp.router(
      title: 'Flutter Demo',

      /// Tema claro.
      theme: AppTheme.lightTheme(),

      // Tema escuro.
      darkTheme: AppTheme.darkTheme(),

      themeMode: ThemeMode.system,

      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
