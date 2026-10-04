import 'package:flutter/material.dart';

class EmptyListComponent extends StatelessWidget {
  /// Toque no botão + para adicionar
  final String mensagem;
  const EmptyListComponent({super.key, required this.mensagem,});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.all(32),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Ícone com fundo sutil
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: colorScheme.primaryContainer.withValues(alpha: 0.4),
                borderRadius: BorderRadius.circular(28),
              ),
              child: Icon(
                Icons.post_add_rounded,
                size: 64,
                color: colorScheme.primary,
              ),
            ),

            const SizedBox(height: 24),

            // Título principal
            Text(
              'Sua lista está vazia',
              textAlign: TextAlign.center,
              style: textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: colorScheme.onSurface,
              ),
            ),

            const SizedBox(height: 8),

            // Mensagem de instrução
            Text(
              'Toque no botão + para adicionar $mensagem',
              textAlign: TextAlign.center,
              style: textTheme.bodyLarge?.copyWith(
                height: 24 / 16, // equivalente aproximado ao lineHeight = 24.sp
                color: colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }
}