import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter training',
        theme: ThemeData(
          primaryColor: Colors.cyan.shade600,
        ),
        home: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.cyan.shade600, title: Text('colors')),
          body: ListView(
            children: const[
              Padding(padding:EdgeInsets.only(top: 8),
              child: Flag(Colors.amber, Colors.cyan, Colors.greenAccent, 100), 
              ),
              Flag(Colors.indigo, Colors.limeAccent, Colors.pink, 100),
              Flag(Colors.red, Colors.teal, Colors.yellow, 100),
              Flag(Colors.black, Colors.blue, Colors.deepOrange, 100),
              SizedBox(height: 100,)
            ],
          ),
        ));
  }
}

class Flag extends StatelessWidget {
  final Color cor1;
  final Color cor2;
  final Color cor3;
  final double largura;
  const Flag(this.cor1, this.cor2, this.cor3, this.largura, {Key? Key})
      : super(key: Key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 140,
        child: Row(
          children: [
            Container(
              height: 140,
              width: largura,
              color: cor1,
            ),
            Container(
              height: 140,
              width: largura,
              color: cor2,
            ),
            Container(
              height: 140,
              width: largura,
              color: cor3,
            ),
          ],
        ),
      ),
    );
  }
}
