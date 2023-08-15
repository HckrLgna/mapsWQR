import 'package:flutter/material.dart';

class UiProvider extends ChangeNotifier {
  int _selectedMenuItem = 0;

  int get SelectedMenuOption {
    return this._selectedMenuItem;
  }

  set selectedMenuOption(int i) {
    _selectedMenuItem = i;
    notifyListeners();
  }
}
