import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );


class BallPage extends StatefulWidget {

  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int DiceNumber=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Center(child: Text('Ask Me Anything')),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        child: Center(
          child: TextButton(
            child: Image.asset('images/ball$DiceNumber.png'),
            onPressed: rollDices(),
          ),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.topLeft,
              colors: <Color>[
                Color(0xff0756f3),
                Color(0xff7796d5)
              ]
          ),
        ),

      ),
    );
  }

  VoidCallback rollDices() {
    return () {
      setState(() {
        DiceNumber = Random().nextInt(5) + 1;
        print ('$DiceNumber');
      });
    };
  }

}





