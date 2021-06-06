import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('Ask Me AnyThing'),
          ),
          body: Player(),
        ),
      ),
    );

class Player extends StatefulWidget {
  const Player() : super();

  @override
  _PlayerState createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  int n = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Center(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    n = Random().nextInt(5) + 1;
                    print("i got clicked $n");
                  });
                },
                child: Image.asset('images/ball$n.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
