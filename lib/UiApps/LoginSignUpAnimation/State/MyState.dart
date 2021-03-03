import 'package:flutter/material.dart';
import '../dataTypes.dart';

class MyState extends ChangeNotifier {
  LogSign type;
  String username = '';
  String email = '';
  String password = '';

  int _page = 0;
  int get pageValue => _page;
  void incrementPage() {
    _page++;
    notifyListeners();
  }

  void decrementPage() {
    _page--;
    notifyListeners();
  }
}
