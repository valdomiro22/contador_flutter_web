import 'package:flutter/material.dart';

class CustomButtonComponent extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? color;
  final Color? textColor;
  final VoidCallback onClick;
  const CustomButtonComponent({
    super.key,
    required this.text,
    required this.onClick,
    this.color,
    this.fontSize,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: color),
        onPressed: onClick,
        child: Text(
          text,
          style: TextStyle(fontSize: fontSize, color: textColor),
        ),
      ),
    );
  }
}
