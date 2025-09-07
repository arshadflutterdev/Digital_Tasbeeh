import 'package:flutter/material.dart';

class MyElevatedbutton extends StatelessWidget {
  final String buttontext;
  final VoidCallback? onPressed;
  const MyElevatedbutton({super.key, required this.buttontext, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      onPressed: onPressed,
      child: Text(buttontext, style: TextStyle(color: Colors.white)),
    );
  }
}
