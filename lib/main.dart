import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftbutton = 1;
  int rightbutton = 2;
  void GangeDice (){
  setState(() {
  rightbutton = Random().nextInt(6)+1;
  leftbutton = Random().nextInt(6)+1;
  });

  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(onPressed: (){
              GangeDice();
            }, child: Image.asset('images/dice$leftbutton.png')),
          ),
          Expanded(
            child: TextButton(onPressed: (){
              setState(() {
                GangeDice();
              });


            }, child: Image.asset('images/dice$rightbutton.png')),
          ),
        ],
      ),
    );
  }
}


