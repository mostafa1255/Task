import 'package:flutter/material.dart';

class Txtstyle {
  static TextStyle style25({required BuildContext context}) {
    return TextStyle(
        fontFamily: "Outfit",
        fontSize: MediaQuery.of(context).size.width * 0.062,
        fontWeight: FontWeight.bold);
  }

  static TextStyle style22({required BuildContext context}) {
    return TextStyle(
      fontFamily: "Outfit",
      fontWeight: FontWeight.w700,
      fontSize: MediaQuery.of(context).size.width * 0.053,
    );
  }

  static TextStyle style20({required BuildContext context}) {
    return TextStyle(
      fontFamily: "Outfit",
      fontWeight: FontWeight.w500,
      fontSize: MediaQuery.of(context).size.width * 0.047,
    );
  }

  static TextStyle style18({required BuildContext context}) {
    return TextStyle(
      fontFamily: "Outfit",
      fontWeight: FontWeight.w600,
      fontSize: MediaQuery.of(context).size.width * 0.0395,
    );
  }

  static TextStyle style16({required BuildContext context}) {
    return TextStyle(
      fontFamily: "Outfit",
      fontWeight: FontWeight.w500,
      fontSize: MediaQuery.of(context).size.width * 0.038,
    );
  }

  static TextStyle style14({required BuildContext context}) {
    return TextStyle(
      fontFamily: "Outfit",
      fontWeight: FontWeight.w500,
      fontSize: MediaQuery.of(context).size.width * 0.032,
    );
  }

  static TextStyle style8({required BuildContext context}) {
    return TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03);
  }
}
