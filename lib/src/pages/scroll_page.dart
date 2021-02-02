import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _pageOne(),
          _pageTwo(),
        ],
      ),
    );
  }

  Widget _pageOne() {
    return Stack(
      children: <Widget>[
        _colorFondo(),
        _imagenFondo(),
      ],
    );
  }

  Widget _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 0.5),
    );
  }

  Widget _imagenFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/scroll-1.png'),
      ),
    );
  }

  Widget _pageTwo() {
    return Center(
      child: Text('Pagina 2'),
    );
  }
}
