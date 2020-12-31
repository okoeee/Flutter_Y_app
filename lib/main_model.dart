import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier{
  String okoeText = 'okoeさんじゃないよ';

  void changeOkoeText(){
    okoeText = 'okoeさんだよ！';
    notifyListeners();
  }
}