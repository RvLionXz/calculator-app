import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  // Constructor untuk CustomButton
  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(100, 100),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        ),
        onPressed: onPressed,
        child: Text(text, style: TextStyle(fontSize: 30, color: Colors.blue)),
      ),
    );
  }
}
