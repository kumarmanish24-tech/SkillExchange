import 'package:flutter/material.dart';

class GenderProvider extends ChangeNotifier {
  String _selectedGender = "";

  String get selectedGender => _selectedGender;

  void selectGender(String value) {
    _selectedGender = value;
    notifyListeners();
  }
}