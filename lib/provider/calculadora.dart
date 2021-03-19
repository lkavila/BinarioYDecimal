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

  String get binary{
     if (isBinary){
        return this._binary;
     }else{
      if (_decimal==""){
        return "0";
      }else return decToBin();
     }
  }
  set binary(String value){ 
    this._binary = value;
    notifyListeners();
   }

  String get decimal {
    if (isBinary){
      if (_binary==""){
        return "0";
      }else return binToDec();
    }else return this._decimal;
  }

  set decimal( String value) {
    this._decimal = value;
    notifyListeners();
  }

  binToDec(){
    this._decimal = int.parse(_binary, radix: 2).toRadixString(10);
    return this._decimal;
  }

  decToBin(){
    this._binary = int.parse(_decimal, radix: 10).toRadixString(2);
    return this._binary;
  }


} 