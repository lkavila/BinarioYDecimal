import 'package:demo_app/provider/calculadora.dart';
import 'package:demo_app/widgets/converter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text('Binary and decimal converter'),
            ),
            body: ChangeNotifierProvider(
              create: (context) => Calculadora(),
              child: Center(child: Converter(),),
              )
            )
            );
  }
}
