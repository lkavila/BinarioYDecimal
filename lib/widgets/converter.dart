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
              Container(
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.centerRight,
                child: Text("${provider.decimal}",
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red[400],
                    fontSize: 25),
              ),
              ),
              Expanded(
                child:
                Builder(builder: (context) {
                  
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

Widget inputText(_binary){
  if(_binary!=null){
      return Text(
                '$_binary',
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(int.parse("#FF5722".replaceAll('#', '0xff'))),
                    fontSize: 35),
              );
  }else{
      return Text('',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35),);  
  }          
}

