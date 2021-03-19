import 'package:demo_app/provider/calculadora.dart';
import 'package:flutter/material.dart';


class Decimal extends StatelessWidget {
  final Calculadora _provider;
  const Decimal(this._provider, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              boton("1"),
              boton("2"),
              boton("3"),

            ],
            
          ),
          Spacer(),
          Row(
            children: [
              boton("4"),
              boton("5"),
              boton("6"),

            ],
            
          ),
          Spacer(),
          Row(
            children: [
              boton("7"),
              boton("8"),
              boton("9"),

            ],
            
          ),
          Spacer(),
          Row(
            children: [
              MaterialButton(
                  color: Colors.blue[900],
                  onPressed: () {
                   _provider.binary="0";
                   _provider.decimal="0";
                  },
                  child: Text("Reset",
                      style: new TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                      ))),
              boton("0"),

            ],
            
          ),
        ]
      ),
    );
  }

  Widget boton(String num){

  return Container(
    padding: const EdgeInsets.all(2.0),
    color: Colors.amber[400],
    alignment: Alignment.center,
    child: ElevatedButton(

      child: Text(num),
      style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.teal[400])),
      onPressed: () {
        _provider.decimal+=num;
      },
      ),
  );

}
}

