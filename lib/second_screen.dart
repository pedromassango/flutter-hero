import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget{

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white30,
        elevation: 0.0,
        title: Text('Hero Page 2',
        style: TextStyle(
          color: Colors.black
        ),),
      ),
      body: Padding(
          padding: EdgeInsets.only(left: 32.0, top: 16.0),
        child: Hero(
          tag: 'logo',
          child: Image.asset('images/icon_like.png',
          width: 50.0,
          height: 50.0,
          ),
        ),
      ),
    );
  }
}