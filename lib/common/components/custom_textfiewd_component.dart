import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';

class CustomTextFormFiewdComponent extends StatelessWidget {
  final TextEditingController? controller;
  final String? hint;
  final String? label;
  final String? erro;
  final int? minLines;
  final int? maxLines;
  final String? valorInicial;
  final bool onFocus;
  final TextInputType textImputType;
  final ValueChanged<String>? onChanged;

  const CustomTextFormFiewdComponent({
    super.key,
    this.controller,
    this.hint,
    this.valorInicial,
    this.minLines,
    this.erro,
    this.maxLines,
    this.onFocus = false,
    this.label,
    required this.textImputType,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: controller,
          initialValue: valorInicial,
          keyboardType: textImputType,
          onChanged: onChanged,
          autofocus: onFocus,
          minLines: minLines,
          maxLines: maxLines,
          decoration: InputDecoration(
            hintText: hint,
            labelText: label,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),

        erro == null ? SizedBox() : Text(erro!, style: TextStyle(fontSize: 12, color: Colors.red)),
      ],
    );
  }
}

@Preview(name: 'TextFie')
Widget visualizador3() {
  return const CustomTextFormFiewdComponent(textImputType: TextInputType.name);
}
