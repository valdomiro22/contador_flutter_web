import 'package:flutter/material.dart';

import 'custom_textfiewd_component.dart';

class EditarTextoBottomSheetComponent extends StatefulWidget {
  final String titulo;
  final String descricao;
  final String label;
  final String? valorAtual;
  final bool permitirVazio;

  const EditarTextoBottomSheetComponent({
    super.key,
    required this.titulo,
    required this.descricao,
    required this.label,
    required this.valorAtual,
    this.permitirVazio = false,
  });

  @override
  State<EditarTextoBottomSheetComponent> createState() => _EditarTextoBottomSheetComponentState();
}

class _EditarTextoBottomSheetComponentState extends State<EditarTextoBottomSheetComponent> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();

    _controller = TextEditingController(text: widget.valorAtual ?? '');
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

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Digite um texto válido')));
      return;
    }

    Navigator.of(context).pop(texto);
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
              textImputType: TextInputType.text,
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
