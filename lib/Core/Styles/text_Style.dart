import 'package:flutter/material.dart';

class Txtstyle {
  static TextStyle style25({required BuildContext context}) {
    return TextStyle(
        fontSize: MediaQuery.of(context).size.width * 0.062,
        fontWeight: FontWeight.bold);
  }

  static TextStyle style8({required BuildContext context}) {
    return TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03);
  }
}
