import 'dart:math';

import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _title(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _fondoApp() {
    final gradient = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 53, 57, 1.0),
          ],
        ),
      ),
    );

    final roseBox = Transform.rotate(
      angle: -pi / 6.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(95.0),
          gradient: LinearGradient(colors: [
            Color.fromRGBO(236, 98, 188, 1.0),
            Color.fromRGBO(241, 142, 172, 1.0),
          ]),
        ),
      ),
    );

    return Stack(
      children: <Widget>[
        gradient,
        Positioned(
          top: -100,
          child: roseBox,
        ),
      ],
    );
  }

  Widget _title() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Esto es una mamada',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Esto es una mamada versión subtitle',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
