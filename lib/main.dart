import 'package:flutter/material.dart';
import 'homePage.dart';
import 'estrenos.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cinexion',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/estrenos': (context) => EstrenosPage(),
        '/dulceria': (context) => DulceriaPage(),
        '/boletos': (context) => BoletosPage(),
        '/taquilla': (context) => TaquillaPage(),
        '/cartelera': (context) => CarteleraPage(),
        '/servicio': (context) => ServicioPage(),
      },
    );
  }
}



class DulceriaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dulceria'),
      ),
    );
  }
}

class BoletosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Boletos'),
      ),
    );
  }
}

class CarteleraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cartelera'),
      ),
    );
  }
}

class TaquillaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Taquilla'),
      ),
    );
  }
}

class ServicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Servicio al Cliente'),
      ),
    );
  }
}

  
