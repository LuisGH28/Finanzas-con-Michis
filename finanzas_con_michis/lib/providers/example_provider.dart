import 'package:flutter/material.dart';

class ExampleProvider with ChangeNotifier {
  String example = 'Hola Michi';

  void updateExample(String newValue) {
    example = newValue;
    notifyListeners();
  }
}
