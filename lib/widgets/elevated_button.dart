import 'package:flutter/material.dart';

class CostumeElevatedButton extends StatelessWidget {
  final Function()? onPressed;
  late Color color;
  late String label;

  CostumeElevatedButton({
    super.key,
    required this.onPressed,
    this.color = Colors.teal,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(color)),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
