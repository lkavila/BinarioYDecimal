import 'package:demo_app/provider/calculadora.dart';
import 'package:demo_app/widgets/binary.dart';
import 'package:demo_app/widgets/decimal.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Converter extends StatefulWidget {
  @override
  _ConverterState createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {

  @override
  Widget build(BuildContext context) {

    final provider = Provider.of<Calculadora>(context);

    return Container(
     child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
               alignment: Alignment.centerLeft,
              child: Builder(
                builder: (context) {
                  if (provider.isBinary){
                    return TextButton(onPressed: (){provider.isBinary=false;}, child: Text("Binary -> Decimal"));
                  }else return TextButton(onPressed: (){provider.isBinary=true;}, child: Text("Decimal -> Binary"));
                },)
              ),
        Container(
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.centerRight,
              child: inputText(provider.binary)
              ),
        SizedBox(
          height: 0.2,
          width: 10.0,
          child: ColoredBox(color: Colors.blueGrey,) 
        ),
        Container(
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.centerRight,
                child: inputText(provider.decimal)
              ),
        Expanded(
                child: Builder(builder: (context) {
                  
                  if (provider.isBinary){
                    return Binary(provider);
                  }else{
                    return Decimal(provider);
                  }
                },),
                ),
              
          ]),


    );
  }



}

Widget inputText(String _num){
  
    return Text('${quitarCeros(_num)}',
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 30),
    );
  }


String quitarCeros(String _num){
  
  while (_num.startsWith("0") && _num.length>1){
    _num = _num.substring(1);
  }
  return _num;
}

