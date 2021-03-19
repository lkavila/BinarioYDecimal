import 'package:flutter/cupertino.dart';

class Calculadora extends ChangeNotifier{
  String _binary = "0";
  String _decimal = "0"; 
  bool _isBinary = true;

  bool get isBinary => this._isBinary;

  set isBinary(bool value){
    this._isBinary = value;
    notifyListeners();
  }

  String get binary => this._binary; 
  set binary(String value){ 
    this._binary = value;
    this._decimal = int.parse(_binary, radix: 2).toRadixString(10);
    notifyListeners();
   }

  String get decimal => this._decimal;
  set decimal( String value) {
    this._decimal = value;
    this._binary = int.parse(_decimal, radix: 10).toRadixString(2);
    notifyListeners();
  }
} 