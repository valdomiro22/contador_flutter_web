import 'package:flutter/material.dart';

void outlinedSnackBarComponent({
  required BuildContext context,
  required String mensagem,
  required Color bordasAndTextColor,
  Color background = Colors.transparent,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: Duration(seconds: 2),
      backgroundColor: background,
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      padding: EdgeInsets.zero,
      margin: const EdgeInsets.only(bottom: 20, left: 70, right: 70),
      content: Container(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: bordasAndTextColor, width: 1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Text(mensagem, style: TextStyle(color: bordasAndTextColor)),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
