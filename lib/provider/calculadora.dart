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
    notifyListeners();
   }

  String get decimal {
    if (_binary==""){
      return "0";
    }else return binToDec();
  }

  set decimal( String value) {
    this._decimal = value;// _decimal = int.parse(_binary, radix: 2).toRadixString(10);
    notifyListeners();
  }

  binToDec(){
    return int.parse(_binary, radix: 2).toRadixString(10);
  }

  decToBin(){
    return int.parse(_decimal, radix: 10).toRadixString(2);
  }


} 