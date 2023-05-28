import 'package:app3/diceeapp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink[300],
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Center(
            child: Text("Dice App", style: TextStyle(color: Colors.orange[300], fontSize: 24, fontStyle: FontStyle.italic ),
                  ),
          ),
      ),
      body: DicePage(),
      )
    );
   ; } }