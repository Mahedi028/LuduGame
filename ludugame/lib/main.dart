import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  runApp(LuduGame());
}
class LuduGame extends StatefulWidget {
  @override
  _LuduGameState createState() => _LuduGameState();
}

class _LuduGameState extends State<LuduGame> {
  int leftdice=1;
  int rightdice=2;
  void ChangeDiceNumber(){
      setState(() {
        leftdice=Random().nextInt(4)+1;
       rightdice=Random().nextInt(4)+1;
      });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange,
        appBar: AppBar(
          backgroundColor: Colors.orange,
          centerTitle: true,
          title: Text(
            'Ludu Game',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            ),
            ),
            body: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SafeArea(
                  child:  FlatButton(
                onPressed: (){
                 ChangeDiceNumber();
                },
                child: Image(
                height: 500,
                width: 500,
                image:AssetImage('assets/ludu-$leftdice.png')
                ,)
                ,) 
                ),
                SafeArea(
                  child: FlatButton(
                onPressed: (){
                  ChangeDiceNumber();
                },
                child: Image(
                height: 500,
                width: 500,
                image:AssetImage('assets/ludu-$rightdice.png')
                ,)
                ,) 
                ,),
              ],)
            ),
            );
  }

}