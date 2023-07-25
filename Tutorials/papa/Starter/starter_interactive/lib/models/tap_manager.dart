import 'package:flutter/foundation.dart';

class TapManager extends ChangeNotifier {
  int _selectedTap = 0;

  int get selectedTap => _selectedTap;

  void goToTap(int index) {
    _selectedTap = index;
    notifyListeners();
  }

  void goToRecipes() {
    _selectedTap = 1;
    notifyListeners();
  }

}