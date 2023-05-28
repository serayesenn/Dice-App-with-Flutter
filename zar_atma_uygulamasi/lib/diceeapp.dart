import 'package:flutter/material.dart';
import 'dart:math';
class DicePage extends StatefulWidget {
   DicePage({super.key});
  
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
int leftDiceNumber=5;
int rightDiceNumber=1;

void changeDiceNumber(){
leftDiceNumber=Random().nextInt(6)+1;
rightDiceNumber=Random().nextInt(6)+1;
}
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      changeDiceNumber();
                    });
                    
                    print("Left button activated, number is $leftDiceNumber");
                  },
                  child: Image.asset("lib/image/dice$leftDiceNumber.png"))
                ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      changeDiceNumber();
                    });
                    print("Right button activated, number is $rightDiceNumber");
                  },
                  child: Image.asset("lib/image/dice$rightDiceNumber.png"))
                ),
                
              
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              TextButton(onPressed: () {
                setState(() {
                  changeDiceNumber();
                });
              },
               child: Text("Roll", style: TextStyle(fontSize: 48, backgroundColor: Colors.black, color: Colors.white),))
            ],
          )
        ],
      ),
      
    );
  }
}