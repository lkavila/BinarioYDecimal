import 'package:demo_app/provider/calculadora.dart';
import 'package:flutter/material.dart';

class Binary extends StatelessWidget {
  final Calculadora _provider;
  const Binary(this._provider, {Key key}) : 
  
  super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: binary(context, _provider),
    );
  }
}

Widget binary(BuildContext context, Calculadora _provider){
      return Container(
     child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
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
                          onPressed: () {_provider.binary+="1";},
                        ),
                      
                      MaterialButton(
                        height: 400,
                        minWidth: 120,
                        child: Text("0", style: TextStyle(color: Colors.white, fontSize: 20)),
                        color: Colors.blue,
                        onPressed: () {_provider.binary+="0";},
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
                   _provider.binary="";
                   _provider.decimal="";
                  },
                  child: Text("Reset",
                      style: new TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                      ))),
            ),
          ),
          ]
        )
      );
      
}