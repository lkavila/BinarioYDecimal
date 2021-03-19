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
          Expanded(flex: 1, child: Row(
            children: [
              boton("1"),
              boton("2"),
              boton("3"),
            ],
          ),
          ),
          Expanded(flex: 1, child: Row(
            children: [
              boton("4"),
              boton("5"),
              boton("6"),
            ],
          ),),
          Expanded(flex: 1, child: Row(
            children: [
              boton("7"),
              boton("8"),
              boton("9"),
            ],
          ),),
          Expanded(flex: 1, 
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                Expanded(
                  flex: 2,
            child: Container(
              padding: const EdgeInsets.all(5.0),
              alignment: Alignment.center,
              child: MaterialButton(
                  color: Colors.blue[900],
                  minWidth: 200.0,
                  height: 90.0,
                  elevation: 10.0,
                  splashColor: Colors.lightBlue[400],
                  shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                  onPressed: () {
                   _provider.binary="0";
                   _provider.decimal="0";
                  },
                  child: Text("Reset",
                      style: new TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ))),
              
              
                ),
              ),
            boton("0"),
            ],
            
          ),
          ),
        ]
      ),
    );
  }

  Widget boton(String _num){

  return 
  Expanded(
    child: Container(
      padding: const EdgeInsets.all(5.0),
      alignment: Alignment.center,
      child: ElevatedButton(

          child: Text(_num, style: TextStyle(fontSize: 25),),
          style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.teal[400])
          , minimumSize: MaterialStateProperty.resolveWith((states) => Size(90, 90))
          , elevation: MaterialStateProperty.resolveWith((states) => 7.0)
          , overlayColor: MaterialStateProperty.resolveWith((states) => Colors.tealAccent[700])),
          onPressed: () {
            _provider.decimal+=_num;
          },
        ),
  )
  );

}
}

