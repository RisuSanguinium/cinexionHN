import 'package:flutter/material.dart';

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
              Navigator.pushNamed(context, '/estrenos');
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
              Navigator.pushNamed(context, '/dulceria');
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
              Navigator.pushNamed(context, '/cartelera');
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
              Navigator.pushNamed(context, '/boletos');
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
              Navigator.pushNamed(context, '/taquilla');
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
              Navigator.pushNamed(context, '/servicio');
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