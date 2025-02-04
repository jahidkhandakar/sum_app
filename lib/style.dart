import 'package:flutter/material.dart';

InputDecoration AppInputStyle(label) {
  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
    filled: true,
    fillColor: Colors.green[300],
    border: OutlineInputBorder(),
    labelText: label,
  );
}

TextStyle HeadTextStyle() {
  return TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w800,
    color: Colors.green[300],
  );
}

ButtonStyle AppButtonStyle() {
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.all(22),
    backgroundColor: Colors.green,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
  );
}
