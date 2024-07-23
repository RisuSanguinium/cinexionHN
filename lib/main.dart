import 'package:flutter/material.dart';
import 'boletos.dart';

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

class EstrenosPage extends StatelessWidget {
  final List<Movies> upcomingMovies = [
    Movies(
      title: "Twisters",
      releaseDate: "8 de Julio 2024",
      posterUrl:
          "https://th.bing.com/th?id=OIF.SzHUHhoX9ejvtm1g%2fC0jCg&rs=1&pid=ImgDetMain",
    ),
    Movies(
      title: "Bob Marley: La Leyenda",
      releaseDate: "15 de Febrero 2024",
      posterUrl:
          "https://th.bing.com/th/id/R.e0288ba73406bdfd272027c57737095d?rik=Wx5lz4HZiI1Hkg&riu=http%3a%2f%2fwww.impawards.com%2f2024%2fposters%2fbob_marley_one_love_ver5.jpg&ehk=Be7YFgYLQi0RNeAQSr78CvMTS%2fr0g4%2bT4zu9UV1q2d4%3d&risl=&pid=ImgRaw&r=0",
    ),
    Movies(
      title: "Dune: Parte 2",
      releaseDate: "6 de Febrero 2024",
      posterUrl:
          "https://th.bing.com/th/id/OIP.euT_3v4i3iR_eOh3KGU8QgAAAA?rs=1&pid=ImgDetMain",
    ),
    Movies(
      title: "Back to Black",
      releaseDate: "11 de abril 2024",
      posterUrl:
          "https://th.bing.com/th/id/OIP.UmGyTM2_ZD-vgdRZgiEITQAAAA?rs=1&pid=ImgDetMain",
    ),
    Movies(
      title: "Challengers",
      releaseDate: "26 de marzo 2024",
      posterUrl:
          "https://th.bing.com/th/id/OIP.Vwf04-b_gqmHp5Or68G1GwHaK-?rs=1&pid=ImgDetMain",
    ),
    Movies(
      title: "Deadpool y Wolverine",
      releaseDate: "25 de julio 2024",
      posterUrl:
          "https://preview.redd.it/official-new-poster-for-deadpool-and-wolverine-v0-txne73o16iic1.jpeg?width=1080&crop=smart&auto=webp&s=1c60613d05ca418d3e4de1f367387246ca519403",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('¡Explora nuestros nuevos estrenos!'),
      ),
      body: ListView.builder(
        itemCount: upcomingMovies.length,
        itemBuilder: (context, index) {
          final movie = upcomingMovies[index];
          return Container(
            height: 150.0, // Ajusta la altura deseada para cada Card
            margin: EdgeInsets.symmetric(
                vertical: 8.0, horizontal: 16.0), // Opcional: añadir margen
            child: Card(
              child: Padding(
                padding:
                    EdgeInsets.all(8.0), // Opcional: padding dentro de la card
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(
                          8.0), // Opcional: para redondear las esquinas
                      child: SizedBox(
                        width: 100.0, // Ajusta el ancho deseado
                        height:
                            120.0, // Ajusta la altura deseada para la imagen
                        child: Image.network(
                          movie.posterUrl,
                          fit: BoxFit
                              .cover, // Esto ajusta la imagen para que cubra el contenedor
                        ),
                      ),
                    ),
                    SizedBox(width: 16.0), // Espacio entre la imagen y el texto
                    Expanded(
                      child: Column(
                        mainAxisAlignment:
                            MainAxisAlignment.center, // Centrar verticalmente
                        crossAxisAlignment: CrossAxisAlignment
                            .start, // Alinear el texto a la izquierda
                        children: [
                          Text(
                            movie.title,
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                              height: 8.0), // Espacio entre título y subtítulo
                          Text('Fecha de Estreno: ${movie.releaseDate}'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

/*clase diseño*/
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

/*final de dulceria*/

//Cartelera

class CarteleraPage extends StatelessWidget {
  const CarteleraPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cartelera'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
    );
  }
}

//Final Cartelera
//Taquilla
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

class Movies {
  final String title;
  final String releaseDate;
  final String posterUrl;
  Movies(
      {required this.title,
      required this.releaseDate,
      required this.posterUrl});
}
