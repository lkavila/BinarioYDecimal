import 'package:flutter/material.dart';


class Decimal extends StatelessWidget {
  const Decimal({Key key}) : super(key: key);

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
              boton("Reset"),
              boton("0"),

            ],
            
          ),
        ]
      ),
    );
  }
}

Widget boton(String num){

  return Container(
    padding: const EdgeInsets.all(8.0),
    alignment: Alignment.center,
    child: ElevatedButton(
      child: Text(num),
      onPressed: () {
        
      },
      ),
  );

}