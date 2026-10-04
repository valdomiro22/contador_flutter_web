import 'package:flutter/material.dart';

import 'custom_textfiewd_component.dart';

class EditarNumeroBottomSheetComponent extends StatefulWidget {
  final String titulo;
  final String descricao;
  final String label;
  final int? valorAtual;
  final bool permitirVazio;

  const EditarNumeroBottomSheetComponent({
    super.key,
    required this.titulo,
    required this.descricao,
    required this.label,
    required this.valorAtual,
    this.permitirVazio = true,
  });

  @override
  State<EditarNumeroBottomSheetComponent> createState() => _EditarNumeroBottomSheetComponentState();
}

class _EditarNumeroBottomSheetComponentState extends State<EditarNumeroBottomSheetComponent> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();

    _controller = TextEditingController(text: widget.valorAtual?.toString() ?? '');
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _salvar() {
    final texto = _controller.text.trim();

    if (texto.isEmpty) {
      if (widget.permitirVazio) {
        Navigator.of(context).pop(null);
        return;
      }

      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Digite um valor')));
      return;
    }

    final valor = int.tryParse(texto);

    if (valor == null) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Digite um número válido')));
      return;
    }

    Navigator.of(context).pop(valor);
  }

  @override
  Widget build(BuildContext context) {
    final bottomPadding = MediaQuery.viewInsetsOf(context).bottom;

    return Padding(
      padding: EdgeInsets.only(left: 24, top: 24, right: 24, bottom: bottomPadding + 24),
      child: SafeArea(
        bottom: true,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.titulo,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            Text(
              widget.descricao,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 24),

            CustomTextFormFiewdComponent(
              controller: _controller,
              textImputType: TextInputType.number,
              label: widget.label,
            ),
            const SizedBox(height: 24),

            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('Cancelar'),
                  ),
                ),
                const SizedBox(width: 12),

                Expanded(
                  child: ElevatedButton(onPressed: _salvar, child: const Text('Salvar')),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
