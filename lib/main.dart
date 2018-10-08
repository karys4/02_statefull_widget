import 'package:flutter/material.dart';

void main() {
  runApp(new Application());
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => new _ApplicationState();
}

class _ApplicationState extends State<Application> {
  String ttext = '';

  @override
  void initSate() {
    ttext = 'click on this button';
    super.initState();
  }

  void method1() {
    setState(() {
      ttext = 'The text is been changed';
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: new Center(
          child: new RaisedButton(
            onPressed: () {
              method1();
            },
            child: new Text(ttext),
          ),
        ),
      ),
    );
  }
}
