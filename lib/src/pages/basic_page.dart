import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  //propiedades
  final titleStyle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final titleSecundaryStyle = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _createImage(),
            _createTitle(),
            _createActions(),
            _createText(),
            _createText(),
            _createText(),
            _createText(),
            _createText(),
          ],
        ),
      ),
    );
  }

  Widget _createImage() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
            'https://concepto.de/wp-content/uploads/2015/03/paisaje-e1549600034372.jpg'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _createTitle() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Lago en Alemania', style: titleStyle),
                  // esto es para separar
                  SizedBox(height: 7.0),
                  Text('Este es el texto ahi que tiene',
                      style: titleSecundaryStyle),
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 30.0),
            Text('41', style: TextStyle(fontSize: 20.0))
          ],
        ),
      ),
    );
  }

  Widget _createActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _action(Icons.call, "Call"),
        _action(Icons.near_me, "Route"),
        _action(Icons.search, "Search"),
      ],
    );
  }

  Widget _action(IconData icon, String text) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(text,
            style: TextStyle(
              fontSize: 15.0,
              color: Colors.blue,
            )),
      ],
    );
  }

  Widget _createText() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 40.0,
        ),
        child: Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vestibulum nunc eu enim tempor ultricies. Etiam accumsan augue tellus. Nullam accumsan, ligula nec tristique ultricies, ipsum nibh cursus dolor, nec scelerisque nunc ligula eget magna. Nulla scelerisque vestibulum pulvinar. Quisque mollis mauris facilisis efficitur consequat. Morbi magna enim, sollicitudin a venenatis in, ultricies a purus. Proin auctor congue lectus, eu euismod lorem lacinia sit amet. Aliquam at magna vitae tellus dignissim pellentesque ac non lacus. Aliquam varius dolor quis tincidunt gravida.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
