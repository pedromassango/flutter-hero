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
        title: Text('Hero Page 2'),
        leading: Hero(
          tag: 'logo',
          child: Image.asset('images/icon_like.png'),
        ),
      ),
    );
  }
}