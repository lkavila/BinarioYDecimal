import 'package:flutter/material.dart';

class Converter extends StatefulWidget {
  @override
  _ConverterState createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {
  String _binary;
  String _decimal = "0"; // _decimal = int.parse(_binary, radix: 2).toRadixString(10);

  void _onPressed(String _num) {

    String _bin;
    if(_binary!=null){
      _bin = _binary + _num;
    }else{_bin = _num;}

    String _dec = int.parse(_bin, radix: 2).toRadixString(10);

    setState(() {
      _binary = _bin;
      _decimal = _dec;
    });
  }

  void _onReset(){
    setState(() {
      _binary = null;
      _decimal = "0";
    });

  }

  @override
  Widget build(BuildContext context) {
    return Container(
     child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
               alignment: Alignment.centerLeft,
              child: Text("Binary -> Decimal")
              ),
        Container(
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.centerRight,
              child: inputText(_binary)
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.centerRight,
                child: Text("$_decimal",
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red[400],
                    fontSize: 25),
              ),
              ),



            Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      MaterialButton(
                          height: 400,
                          minWidth: 120,
                          child: Text("1", style: TextStyle(color: Colors.white, fontSize: 20)),
                          color: Colors.blue,
                          onPressed: () {_onPressed("1");},
                        ),
                      
                      MaterialButton(
                        height: 400,
                        minWidth: 120,
                        child: Text("0", style: TextStyle(color: Colors.white, fontSize: 20)),
                        color: Colors.blue,
                        onPressed: () {_onPressed("0");},
                      ),
                    ]
                    ),
            ),
            ),

          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                  color: Color(int.parse("#0069C0".replaceAll('#', '0xff'))),
                  onPressed: () {
                   _onReset();
                  },
                  child: Text("Reset",
                      style: new TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                      ))),
            ),
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