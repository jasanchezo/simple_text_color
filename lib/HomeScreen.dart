import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

// CUANDO SE ANTEPONE EL "_" SIGNIFICA QUE ES PRIVADO
class _HomeScreenState extends State<HomeScreen> {
  Color _myColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    final List<Widget> botones = <Widget>[
      Text(
        "Cambia el color del texto",
        style: TextStyle(color: _myColor, fontSize: 15.0),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          RaisedButton(
            child: Text("Azul"),
            onPressed: () {
              print("Click boton azul");
              _changeColor(Colors.blue);
            },
          ),
          RaisedButton(
            child: Text("Verde"),
            onPressed: () {
              print("Click boton verde");
              _changeColor(Colors.green);
            },
          ),
          RaisedButton(
            child: Text("Rojo"),
            onPressed: () {
              print("Click boton rojo");
              _changeColor(Colors.red);
            },
          )
        ],
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: botones,
      ),
    );
  }

  void _changeColor(Color color) {
    setState(() {
      _myColor = color;
    });
  }
}
