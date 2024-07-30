import 'package:flutter/material.dart';
import 'taquilla.dart';
import 'ServicioPage.dart';
import 'Dulceria.dart';
import 'boletos.dart';
import 'estrenos.dart';
import 'cartelera.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('¡Bienvenido a Cinexion!'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => EstrenosPage()));
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 50), // Ajusta el tamaño mínimo del botón
              ),
              child: Text(
                'Estrenos',
                style: TextStyle(fontSize: 18), // Ajusta el tamaño de la letra
              ),
            ),
            SizedBox(height: 20), // Espacio entre los botones
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => DulceriaPage()));
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 50), // Ajusta el tamaño mínimo del botón
              ),
              child: Text(
                'Dulceria',
                style: TextStyle(fontSize: 18), // Ajusta el tamaño de la letra
              ),
            ),
            SizedBox(height: 20), // Espacio entre los botones
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => CarteleraPage()));
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 50), // Ajusta el tamaño mínimo del botón
              ),
              child: Text(
                'Cartelera',
                style: TextStyle(fontSize: 18), // Ajusta el tamaño de la letra
              ),
            ),
            SizedBox(height: 20), // Espacio entre los botones
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => BoletosPage()));
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 50), // Ajusta el tamaño mínimo del botón
              ),
              child: Text(
                'Boletos',
                style: TextStyle(fontSize: 18), // Ajusta el tamaño de la letra
              ),
            ),
            SizedBox(height: 20), // Espacio entre los botones
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => TaquillaPage()));
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 50), // Ajusta el tamaño mínimo del botón
              ),
              child: Text(
                'Taquilla',
                style: TextStyle(fontSize: 18), // Ajusta el tamaño de la letra
              ),
            ),
            SizedBox(height: 20), // Espacio entre los botones
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => ServicioPage()));
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 50), // Ajusta el tamaño mínimo del botón
              ),
              child: Text(
                'Servicio al Cliente',
                style: TextStyle(fontSize: 18), // Ajusta el tamaño de la letra
              ),
            ),
          ],
        ),
      ),
    );
  }
}
