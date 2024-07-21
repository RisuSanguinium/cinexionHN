import 'package:flutter/material.dart';

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
  final List<Movie> upcomingMovies = [
    Movie(
      title: "Twisters",
      releaseDate: "8 de Julio 2024",
      posterUrl: "https://th.bing.com/th?id=OIF.SzHUHhoX9ejvtm1g%2fC0jCg&rs=1&pid=ImgDetMain",
    ),
    Movie(
      title: "Bob Marley: La Leyenda",
      releaseDate: "15 de Febrero 2024",
      posterUrl: "https://th.bing.com/th/id/R.e0288ba73406bdfd272027c57737095d?rik=Wx5lz4HZiI1Hkg&riu=http%3a%2f%2fwww.impawards.com%2f2024%2fposters%2fbob_marley_one_love_ver5.jpg&ehk=Be7YFgYLQi0RNeAQSr78CvMTS%2fr0g4%2bT4zu9UV1q2d4%3d&risl=&pid=ImgRaw&r=0",
    ),
    Movie(
      title: "Dune: Parte 2",
      releaseDate: "6 de Febrero 2024",
      posterUrl: "https://th.bing.com/th/id/OIP.euT_3v4i3iR_eOh3KGU8QgAAAA?rs=1&pid=ImgDetMain",
    ),
    Movie(
      title: "Back to Black",
      releaseDate: "11 de abril 2024",
      posterUrl: "https://th.bing.com/th/id/OIP.UmGyTM2_ZD-vgdRZgiEITQAAAA?rs=1&pid=ImgDetMain",
    ),
    Movie(
      title: "Challengers",
      releaseDate: "26 de marzo 2024",
      posterUrl: "https://th.bing.com/th/id/OIP.Vwf04-b_gqmHp5Or68G1GwHaK-?rs=1&pid=ImgDetMain",
    ),
    Movie(
      title: "Deadpool y Wolverine",
      releaseDate: "25 de julio 2024",
      posterUrl: "https://preview.redd.it/official-new-poster-for-deadpool-and-wolverine-v0-txne73o16iic1.jpeg?width=1080&crop=smart&auto=webp&s=1c60613d05ca418d3e4de1f367387246ca519403",
    ),
    // Añade más películas según sea necesario
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
          margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0), // Opcional: añadir margen
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(8.0), // Opcional: padding dentro de la card
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0), // Opcional: para redondear las esquinas
                    child: SizedBox(
                      width: 100.0, // Ajusta el ancho deseado
                      height: 120.0, // Ajusta la altura deseada para la imagen
                      child: Image.network(
                        movie.posterUrl,
                        fit: BoxFit.cover, // Esto ajusta la imagen para que cubra el contenedor
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0), // Espacio entre la imagen y el texto
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center, // Centrar verticalmente
                      crossAxisAlignment: CrossAxisAlignment.start, // Alinear el texto a la izquierda
                      children: [
                        Text(
                          movie.title,
                          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8.0), // Espacio entre título y subtítulo
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
  const CarteleraPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cartelera'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      body: const CarteleraContent(),
    );
  }
}

class CarteleraContent extends StatefulWidget {
  const CarteleraContent({super.key});

  @override
  _CarteleraContentState createState() => _CarteleraContentState();
}

class _CarteleraContentState extends State<CarteleraContent> {
  String _selectedIdioma = 'Idioma';
  String _selectedCine = 'Cines';

  final List<String> idiomas = [
    'Idioma',
    'Español',
    'Inglés'
  ];
  final List<String> cines = [
    'Cines',
    'Magic Cinema',
    'Multicinema Metro Mall',
    'Cinemark Mall Multiplaza',
    'Cinépolis Cascadas Mall'
  ];

  List<Pelicula> getPeliculasFiltradas() {
    List<Pelicula> peliculasFiltradas = peliculas;
    if (_selectedIdioma != 'Idioma') {
      peliculasFiltradas = peliculasFiltradas
          .where((pelicula) => pelicula.idioma == _selectedIdioma)
          .toList();
    }
    if (_selectedCine != 'Cines') {
      peliculasFiltradas = peliculasFiltradas
          .where((pelicula) => pelicula.cines.contains(_selectedCine))
          .toList();
    }
    return peliculasFiltradas;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      padding: const EdgeInsets.all(14.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              DropdownButton<String>(
                value: _selectedIdioma,
                hint: const Text('Selecciona un idioma'),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedIdioma = newValue!;
                  });
                },
                items: idiomas.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              DropdownButton<String>(
                value: _selectedCine,
                hint: const Text('Selecciona un cine'),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedCine = newValue!;
                  });
                },
                items: cines.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: getPeliculasFiltradas().length,
              itemBuilder: (context, index) {
                return PeliculaItem(pelicula: getPeliculasFiltradas()[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Pelicula {
  final String nombre;
  final String sinopsis;
  final Map<String, List<String>> horarios;
  final String genero;
  final String clasificacion;
  final String imagenUrl;
  final String idioma;
  final List<String> cines;

  Pelicula({
    required this.nombre,
    required this.sinopsis,
    required this.horarios,
    required this.genero,
    required this.clasificacion,
    required this.imagenUrl,
    required this.idioma,
    required this.cines,
  });
}

class PeliculaItem extends StatelessWidget {
  final Pelicula pelicula;

  const PeliculaItem({super.key, required this.pelicula});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16.0),
      child: ListTile(
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FullScreenImage(imageUrl: pelicula.imagenUrl)),
            );
          },
          child: SizedBox(
            width: 100,
            height: 120,
            child: Image.network(
              pelicula.imagenUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(pelicula.nombre),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(pelicula.sinopsis),
            const SizedBox(height: 10),
            Text('Idioma: ${pelicula.idioma}'),
            const SizedBox(height: 10),
            const Text('Horarios:'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: pelicula.horarios.entries.map((entry) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${entry.key}: ${entry.value.join(', ')}'),
                    const SizedBox(height: 10),
                  ],
                );
              }).toList(),
            ),
            const SizedBox(height: 10),
            Text('Género: ${pelicula.genero}'),
            const SizedBox(height: 10),
            Text('Clasificación: ${pelicula.clasificacion}'),
            const SizedBox(height: 10),
            Text('Cines disponibles: ${pelicula.cines.join(', ')}'),
          ],
        ),
      ),
    );
  }
}

class FullScreenImage extends StatelessWidget {
  final String imageUrl;

  const FullScreenImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Image.network(
            imageUrl,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}

final List<Pelicula> peliculas = [
  Pelicula(
    nombre: 'Spider-Man: Sin Camino a Casa',
    sinopsis: 'Peter Parker se encuentra en un aprieto después de que su identidad como Spider-Man es revelada.',
    horarios: {
      "Lunes": ["10:00", "12:00", "16:00", "19:00"],
      "Martes": ["11:00", "13:00", "17:00", "20:00"],
      "Miércoles": ["10:30", "14:30", "18:30", "21:30"],
      "Jueves": ["09:00", "12:30", "15:30", "19:30"],
      "Viernes": ["10:45", "13:45", "17:45", "20:45"],
      "Sábado": ["08:30", "11:30", "14:30", "18:30"],
      "Domingo": ["09:45", "12:45", "15:45", "19:45"]
    },
    genero: 'Acción, Aventura, Fantasía',
    clasificacion: 'Todo Público',
    imagenUrl: 'https://as2.ftcdn.net/v2/jpg/05/26/80/81/1000_F_526808164_5YW0Qe0MXtaul3oFDYu81C7ysMp638fF.jpg',
    idioma: 'Español',
    cines: [
      'Magic Cinema',
      'Multicinema Metro Mall',
      'Cinépolis Cascadas Mall',
      'Cinemark',
    ],
  ),
  Pelicula(
    nombre: 'Inception',
    sinopsis: 'Un ladrón de sueños trabaja para implantar una idea en la mente de alguien mientras están dormidos.',
    horarios: {
      "Lunes": ["09:00", "11:00", "13:00", "15:00"],
      "Martes": ["10:00", "12:00", "14:00", "16:00"],
      "Miércoles": ["11:30", "13:30", "15:30", "17:30"],
      "Jueves": ["10:30", "12:30", "14:30", "16:30"],
      "Viernes": ["09:45", "11:45", "13:45", "15:45"],
      "Sábado": ["10:15", "12:15", "14:15", "16:15"],
      "Domingo": ["11:00", "13:00", "15:00", "17:00"]
    },
    genero: 'Acción, Aventura, Ciencia ficción',
    clasificacion: 'Adultos',
    imagenUrl: 'https://m.media-amazon.com/images/I/912AErFSBHL._AC_UF894,1000_QL80_.jpg',
    idioma: 'Inglés',
    cines: [
      'Magic Cinema',
      'Multicinema Metro Mall',
      'Cinépolis Cascadas Mall',
      'Cinemark',
    ],
  ),
  Pelicula(
    nombre: 'El Padrino',
    sinopsis: 'La historia de la familia Corleone y su lucha por el poder en el mundo del crimen organizado en Nueva York.',
    horarios: {
      "Lunes": ["11:00", "14:00", "17:00", "20:00"],
      "Martes": ["10:00", "13:00", "16:00", "19:00"],
      "Miércoles": ["12:00", "15:00", "18:00", "21:00"],
      "Jueves": ["11:30", "14:30", "17:30", "20:30"],
      "Viernes": ["10:45", "13:45", "16:45", "19:45"],
      "Sábado": ["09:00", "12:00", "15:00", "18:00"],
      "Domingo": ["10:00", "13:00", "16:00", "19:00"]
    },
    genero: 'Crimen, Drama',
    clasificacion: 'Adultos',
    imagenUrl: 'https://m.media-amazon.com/images/I/51s+CLxeOSL._AC_SY679_.jpg',
    idioma: 'Inglés',
    cines: [
      'Magic Cinema',
      'Multicinema Metro Mall',
      'Cinemark Mall Multiplaza',
      'Cinépolis Cascadas Mall'
    ],
  ),
  Pelicula(
    nombre: 'Toy Story',
    sinopsis: 'Los juguetes de Andy cobran vida cuando no hay humanos alrededor y deben enfrentarse a la llegada de un nuevo juguete, Buzz Lightyear.',
    horarios: {
      "Lunes": ["09:00", "11:00", "13:00", "15:00"],
      "Martes": ["10:00", "12:00", "14:00", "16:00"],
      "Miércoles": ["11:30", "13:30", "15:30", "17:30"],
      "Jueves": ["10:30", "12:30", "14:30", "16:30"],
      "Viernes": ["09:45", "11:45", "13:45", "15:45"],
      "Sábado": ["10:15", "12:15", "14:15", "16:15"],
      "Domingo": ["11:00", "13:00", "15:00", "17:00"]
    },
    genero: 'Animación, Aventura, Comedia',
    clasificacion: 'Todo Público',
    imagenUrl: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fca.yotoplay.com%2Fproducts%2Ftoy-story&psig=AOvVaw00wBKNHKXyl3x-Hx7VlI3M&ust=1721606418157000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCPDor-rptocDFQAAAAAdAAAAABAJ',
    idioma: 'Español',
    cines: [
      'Magic Cinema',
      'Multicinema Metro Mall',
      'Cinemark Mall Multiplaza',
      'Cinépolis Cascadas Mall'
    ],
  ),
  Pelicula(
    nombre: 'Matrix',
    sinopsis: 'Un hacker descubre la verdad sobre su realidad y su papel en la guerra contra sus controladores.',
    horarios: {
      "Lunes": ["10:00", "13:00", "16:00", "19:00"],
      "Martes": ["11:00", "14:00", "17:00", "20:00"],
      "Miércoles": ["09:30", "12:30", "15:30", "18:30"],
      "Jueves": ["10:00", "13:00", "16:00", "19:00"],
      "Viernes": ["09:45", "12:45", "15:45", "18:45"],
      "Sábado": ["10:15", "13:15", "16:15", "19:15"],
      "Domingo": ["11:00", "14:00", "17:00", "20:00"]
    },
    genero: 'Acción, Ciencia ficción',
    clasificacion: 'Adultos',
    imagenUrl: 'https://m.media-amazon.com/images/I/51EG732BV3L._AC_UF894,1000_QL80_.jpg',
    idioma: 'Inglés',
    cines: [
      'Magic Cinema',
      'Multicinema Metro Mall',
      'Cinemark Mall Multiplaza',
      'Cinépolis Cascadas Mall'
    ],
  ),
  Pelicula(
    nombre: 'Titanic',
    sinopsis: 'Una historia de amor y tragedia a bordo del famoso barco Titanic.',
    horarios: {
      "Lunes": ["10:00", "13:00", "16:00", "19:00"],
      "Martes": ["11:00", "14:00", "17:00", "20:00"],
      "Miércoles": ["09:30", "12:30", "15:30", "18:30"],
      "Jueves": ["10:00", "13:00", "16:00", "19:00"],
      "Viernes": ["09:45", "12:45", "15:45", "18:45"],
      "Sábado": ["10:15", "13:15", "16:15", "19:15"],
      "Domingo": ["11:00", "14:00", "17:00", "20:00"]
    },
    genero: 'Drama, Romance',
    clasificacion: 'Todo Público',
    imagenUrl: 'https://m.media-amazon.com/images/I/51gZauoNtkL._AC_SY580_.jpg',
    idioma: 'Inglés',
    cines: [
      'Magic Cinema',
      'Multicinema Metro Mall',
      'Cinemark Mall Multiplaza',
      'Cinépolis Cascadas Mall'
    ],
  ),
  Pelicula(
    nombre: 'Avengers: Endgame',
    sinopsis: 'Después de los devastadores eventos de Avengers: Infinity War, los Vengadores se reúnen para revertir las acciones de Thanos y restaurar el orden en el universo.',
    horarios: {
      "Lunes": ["11:00", "14:00", "17:00", "20:00"],
      "Martes": ["10:00", "13:00", "16:00", "19:00"],
      "Miércoles": ["12:00", "15:00", "18:00", "21:00"],
      "Jueves": ["11:30", "14:30", "17:30", "20:30"],
      "Viernes": ["10:45", "13:45", "16:45", "19:45"],
      "Sábado": ["09:00", "12:00", "15:00", "18:00"],
      "Domingo": ["10:00", "13:00", "16:00", "19:00"]
    },
    genero: 'Acción, Aventura, Ciencia ficción',
    clasificacion: 'Todo Público',
    imagenUrl: 'https://m.media-amazon.com/images/I/81ExhpBEbHL._AC_UF894,1000_QL80_.jpg',
    idioma: 'Inglés',
    cines: [
      'Magic Cinema',
      'Multicinema Metro Mall',
      'Cinemark Mall Multiplaza',
      'Cinépolis Cascadas Mall'
    ],
  ),
  Pelicula(
    nombre: 'El Rey León',
    sinopsis: 'Un joven león debe reclamar su derecho a ser rey después de la trágica muerte de su padre.',
    horarios: {
      "Lunes": ["10:00", "12:00", "14:00", "16:00"],
      "Martes": ["11:00", "13:00", "15:00", "17:00"],
      "Miércoles": ["09:30", "11:30", "13:30", "15:30"],
      "Jueves": ["10:00", "12:00", "14:00", "16:00"],
      "Viernes": ["09:45", "11:45", "13:45", "15:45"],
      "Sábado": ["10:15", "12:15", "14:15", "16:15"],
      "Domingo": ["11:00", "13:00", "15:00", "17:00"]
    },
    genero: 'Animación, Aventura, Drama',
    clasificacion: 'Todo Público',
    imagenUrl: 'https://m.media-amazon.com/images/I/51Z45D+8hfL._AC_SY580_.jpg',
    idioma: 'Español',
    cines: [
      'Magic Cinema',
      'Multicinema Metro Mall',
      'Cinemark Mall Multiplaza',
      'Cinépolis Cascadas Mall'
    ],
  ),
  Pelicula(
    nombre: 'Interstellar',
    sinopsis: 'Un grupo de astronautas viaja a través de un agujero de gusano en busca de un nuevo hogar para la humanidad.',
    horarios: {
      "Lunes": ["12:00", "15:00", "18:00", "21:00"],
      "Martes": ["13:00", "16:00", "19:00", "22:00"],
      "Miércoles": ["14:00", "17:00", "20:00", "23:00"],
      "Jueves": ["12:30", "15:30", "18:30", "21:30"],
      "Viernes": ["13:45", "16:45", "19:45", "22:45"],
      "Sábado": ["11:30", "14:30", "17:30", "20:30"],
      "Domingo": ["12:15", "15:15", "18:15", "21:15"]
    },
    genero: 'Aventura, Drama, Ciencia Ficción',
    clasificacion: 'PG-13',
    imagenUrl: 'https://m.media-amazon.com/images/I/71AslGkVxJL._AC_SY679_.jpg',
    idioma: 'Inglés',
    cines: [
      'Magic Cinema',
      'Cinemark Mall Multiplaza',
      'Cinépolis Cascadas Mall',
    ],
  ),
  Pelicula(
    nombre: 'Avatar',
    sinopsis: 'Un ex-marine es enviado a Pandora para participar en un programa que le permite habitar el cuerpo de un Na\'vi.',
    horarios: {
      "Lunes": ["11:00", "14:00", "17:00", "20:00"],
      "Martes": ["12:00", "15:00", "18:00", "21:00"],
      "Miércoles": ["13:00", "16:00", "19:00", "22:00"],
      "Jueves": ["11:30", "14:30", "17:30", "20:30"],
      "Viernes": ["12:15", "15:15", "18:15", "21:15"],
      "Sábado": ["10:30", "13:30", "16:30", "19:30"],
      "Domingo": ["11:00", "14:00", "17:00", "20:00"]
    },
    genero: 'Acción, Aventura, Ciencia Ficción',
    clasificacion: 'PG-13',
    imagenUrl: 'https://m.media-amazon.com/images/I/91gDuzJzcsL._AC_SY679_.jpg',
    idioma: 'Inglés',
    cines: [
      'Multicinema Metro Mall',
      'Cinépolis Cascadas Mall',
      'Cinemark Mall Multiplaza',
    ],
  ),
  Pelicula(
    nombre: 'Jurassic Park',
    sinopsis: 'Un grupo de científicos clona dinosaurios en una isla para crear un parque temático, pero los animales pronto se descontrolan.',
    horarios: {
      "Lunes": ["09:00", "12:00", "15:00", "18:00"],
      "Martes": ["10:00", "13:00", "16:00", "19:00"],
      "Miércoles": ["11:00", "14:00", "17:00", "20:00"],
      "Jueves": ["09:30", "12:30", "15:30", "18:30"],
      "Viernes": ["10:15", "13:15", "16:15", "19:15"],
      "Sábado": ["08:30", "11:30", "14:30", "17:30"],
      "Domingo": ["09:45", "12:45", "15:45", "18:45"]
    },
    genero: 'Acción, Aventura, Ciencia Ficción',
    clasificacion: 'PG-13',
    imagenUrl: 'https://m.media-amazon.com/images/I/71tFmlM7n2L._AC_SY679_.jpg',
    idioma: 'Español',
    cines: [
      'Magic Cinema',
      'Cinemark Mall Multiplaza',
      'Cinépolis Cascadas Mall',
    ],
  ),
];




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



class Movie {
  final String title;
  final String releaseDate;
  final String posterUrl;

  Movie({required this.title, required this.releaseDate, required this.posterUrl});
}
  
