import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 16.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Image(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1506744038136-46273834b3fb?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHw%3D&w=1000&q=80'),
                  height: 240,
                  fit: BoxFit.cover,
              ),

            ),
            _cabceraTitulo(),
            _accionesButtons(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
          ],
        ),
      ),
    );
  }

  Widget _cabceraTitulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(children: <Widget>[
          Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Lago con arboles',
                    style: estiloTitulo,
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    'Un lago que se encuentra en Alemania',
                    style: estiloSubTitulo,
                  )
                ]),
          ),
          Icon(Icons.star, color: Colors.red, size: 30.0),
          Text('41', style: TextStyle(fontSize: 20.0))
        ]),
      ),
    );
  }

  Widget _accionesButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _crearTexto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 0.0),
        child: Text(
          'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
          'Alps. Situated 1,578 meters above sea level, it is one of the '
          'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
          'half-hour walk through pastures and pine forest, leads you to the '
          'lake, which warms to 20 degrees Celsius in the summer. Activities '
          'enjoyed here include rowing, and riding the summer toboggan run',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }

  Widget _accion(IconData icon, String texto) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
          size: 35.0,
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          texto,
          style: TextStyle(color: Colors.blue, fontSize: 13),
        )
      ],
    );
  }
}
