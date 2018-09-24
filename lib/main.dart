import 'package:flutter/material.dart';
import 'second_screen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Hero Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Home Page'),
      routes: <String, WidgetBuilder>{
        '/second' : (BuildContext context) => SecondScreen()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  /// Called when the bottom icon is clicked
  ///
  /// Navigate to the second screen
  void _nextScreen(){
    Navigator.of(context).pushNamed('/second');
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Spacer(),
          Image.asset('images/icon_like.png'),
          Spacer(),
          MaterialButton(child: Text('Next Screen'),
          textColor: Colors.white,
          color: Colors.blue,
            minWidth: 200.0,
            onPressed: _nextScreen,
          )
        ],
      ),
    );
  }
}
