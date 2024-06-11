import 'package:flutter/cupertino.dart';

class SideNavigationProvider extends ChangeNotifier{
  int navIndex = 0;
  int get currentIndex => navIndex;

  void changeIndex(index) {
    navIndex = index;
    notifyListeners();
  }
}