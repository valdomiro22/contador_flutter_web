import 'package:flutter/material.dart';

void showAlertaDialog(
  BuildContext context, {
  required String mensagem,
  required IconData icone,
  VoidCallback? onConfirm,
}) {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        // Remove parte da margem padrão do Dialog.
        insetPadding: const EdgeInsets.symmetric(horizontal: 16),

        // Deixa o fundo do Dialog transparente para o Container controlar a aparência.
        backgroundColor: Colors.transparent,

        child: Container(
          // Ocupa praticamente toda a largura disponível,
          // respeitando o insetPadding acima.
          width: double.infinity,

          padding: const EdgeInsets.all(20),

          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),

          child: Column(
            // Faz o dialog ter apenas a altura necessária.
            mainAxisSize: MainAxisSize.min,

            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Row(
                children: [
                  Icon(icone, size: 30, color: Colors.red),

                  const SizedBox(width: 8),

                  const Text(
                    'Alerta',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              Text(
                mensagem,
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black),
              ),

              const SizedBox(height: 24),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Cancelar', style: TextStyle(color: Color(0xFF128715))),
                  ),

                  const SizedBox(width: 8),

                  TextButton(
                    onPressed: () {
                      onConfirm?.call();
                      Navigator.of(context).pop();
                    },
                    child: const Text('Confirmar', style: TextStyle(color: Colors.red)),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}
