import 'package:flutter/material.dart';

import '../../core/util/string_helper.dart' as DataHelper;

class DatePickerFieldComponent extends StatelessWidget {
  final DateTime? dataSelecionada;
  final String? erroData;
  final void Function(DateTime data) onDataChanged;

  final String labelText;
  final String hintText;
  final DateTime? firstDate;
  final DateTime? lastDate;

  const DatePickerFieldComponent({
    super.key,
    required this.dataSelecionada,
    required this.erroData,
    required this.onDataChanged,
    this.labelText = 'Data',
    this.hintText = 'Selecione a data',
    this.firstDate,
    this.lastDate,
  });

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController(
      text: dataSelecionada == null ? '' : DataHelper.formatarData(dataSelecionada!),
    );

    return TextField(
      controller: controller,
      readOnly: true,
      onTap: () async {
        final DateTime? picker = await showDatePicker(
          context: context,
          initialDate: dataSelecionada ?? DateTime.now(),
          firstDate: firstDate ?? DateTime(2000),
          lastDate: lastDate ?? DateTime(2100),
        );

        if (picker != null && picker != dataSelecionada) {
          onDataChanged(picker);
        }
      },
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        border: const OutlineInputBorder(),
        suffixIcon: const Icon(Icons.calendar_month),
        errorText: erroData,
      ),
    );
  }
}
