import 'package:flutter/material.dart';

class Appstyle {
  static TextStyle? headlinestyle() {
    return const TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w700,
      letterSpacing: 2,
      wordSpacing: 2,
    );
  }

  static TextStyle? header() {
    return const TextStyle(fontSize: 70, color: Colors.amber);
  }
}
