import 'package:flutter/material.dart';

class PageSelectedState extends ChangeNotifier {
  int _pageSelected = 0;

  int get pageSelected => _pageSelected;

  void changePageSelected(int selected) {
    _pageSelected = selected;
    notifyListeners();
  }
}
