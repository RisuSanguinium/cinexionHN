import 'package:flutter/material.dart';

// Página principal de la cartelera
class CarteleraPage extends StatelessWidget {
  const CarteleraPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra de navegación con título centrado y fondo blanco
      appBar: AppBar(
        title: const Text('Cartelera'),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      // Cuerpo de la página que contiene el contenido principal
      
      body: const CarteleraContent(),
    );
  }
}

// Widget que contiene el contenido de la cartelera
class CarteleraContent extends StatefulWidget {
  const CarteleraContent({super.key});

  @override
  _CarteleraContentState createState() => _CarteleraContentState();
}

// Estado del widget CarteleraContent
class _CarteleraContentState extends State<CarteleraContent> {
  // Variables para almacenar las selecciones de idioma y cine
  String _selectedIdioma = 'Idioma';
  String _selectedCine = 'Cines';

  // Listas de opciones para los dropdowns
  final List<String> idiomas = ['Idioma', 'Español', 'Inglés'];
  final List<String> cines = [
    'Cines',
    'Magic Cinema',
    'Multicinema Metro Mall',
    'Cinemark Mall Multiplaza',
    'Cinépolis Cascadas Mall'
  ];

  // Función para filtrar las películas según el idioma y el cine seleccionados
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
    // Obtiene el ancho de la pantalla
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(14.0),
      child: Column(
        children: [
          // Fila de dropdowns para filtrar las películas
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
          const SizedBox(height: 16.0), // Espaciado entre los elementos
          // Lista de películas filtradas
          Expanded(
            child: ListView.builder(
              itemCount: getPeliculasFiltradas().length,
              itemBuilder: (context, index) {
                return PeliculaItem(
                  pelicula: getPeliculasFiltradas()[index],
                  screenWidth: screenWidth,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// Clase que representa una película
class Pelicula {
  final String nombre;
  final String sinopsis;
  final String genero;
  final String clasificacion;
  final String imagenUrl;
  final String idioma;
  final List<String> cines;

  Pelicula({
    required this.nombre,
    required this.sinopsis,
    required this.genero,
    required this.clasificacion,
    required this.imagenUrl,
    required this.idioma,
    required this.cines,
  });
}

// Widget para mostrar un elemento de la lista de películas
class PeliculaItem extends StatelessWidget {
  final Pelicula pelicula;
  final double screenWidth;

  const PeliculaItem({super.key, required this.pelicula, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.only(bottom: 16.0),
      child: ListTile(
        // Imagen de la película, que al tocarse muestra una vista de pantalla completa
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => FullScreenImage(imageUrl: pelicula.imagenUrl)),
            );
          },
          child: SizedBox(
            width: screenWidth * 0.3, // Ajuste del tamaño de la imagen según el ancho de la pantalla
            height: screenWidth * 0.4,
            child: Image.network(
              pelicula.imagenUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(pelicula.nombre, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(pelicula.sinopsis),
            const SizedBox(height: 10),
            Text('Idioma: ${pelicula.idioma}'),
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

// Widget para mostrar una imagen en pantalla completa
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
      sinopsis:
          'Peter Parker se encuentra en un aprieto después de que su identidad como Spider-Man es revelada.',
      genero: 'Acción, Aventura, Fantasía',
      clasificacion: 'Todo Público',
      imagenUrl:
          'https://as2.ftcdn.net/v2/jpg/05/26/80/81/1000_F_526808164_5YW0Qe0MXtaul3oFDYu81C7ysMp638fF.jpg',
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
      sinopsis:
          'Un ladrón de sueños trabaja para implantar una idea en la mente de alguien mientras están dormidos.',
      genero: 'Acción, Aventura, Ciencia ficción',
      clasificacion: 'Adultos',
      imagenUrl:
          'https://m.media-amazon.com/images/I/912AErFSBHL._AC_UF894,1000_QL80_.jpg',
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
      sinopsis:
          'La historia de la familia Corleone y su lucha por el poder en el mundo del crimen organizado en Nueva York.',
      genero: 'Crimen, Drama',
      clasificacion: 'Adultos',
      imagenUrl:
          'https://es.web.img3.acsta.net/pictures/18/06/12/12/12/0117051.jpg?coixp=49&coiyp=27',
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
      sinopsis:
          'Los juguetes de Andy cobran vida cuando no hay humanos alrededor y deben enfrentarse a la llegada de un nuevo juguete, Buzz Lightyear.',
      genero: 'Animación, Aventura, Comedia',
      clasificacion: 'Todo Público',
      imagenUrl:
          'https://m.media-amazon.com/images/M/MV5BMTgxOTY4Mjc0MF5BMl5BanBnXkFtZTcwNTA4MDQyMw@@._V1_FMjpg_UX1000_.jpg',
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
      sinopsis:
          'Un hacker descubre la verdad sobre su realidad y su papel en la guerra contra sus controladores.',
      genero: 'Acción, Ciencia ficción',
      clasificacion: 'Adultos',
      imagenUrl:
          'https://m.media-amazon.com/images/I/51EG732BV3L._AC_UF894,1000_QL80_.jpg',
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
      sinopsis:
          'Una historia de amor y tragedia a bordo del famoso barco Titanic.',
      genero: 'Drama, Romance',
      clasificacion: 'Todo Público',
      imagenUrl:
          'https://static.cinepolis.com/resources/mx/movies/posters/414x603/41608-187536-20230201050003.jpg',
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
      sinopsis:
          'Después de los devastadores eventos de Avengers: Infinity War, los Vengadores se reúnen para revertir las acciones de Thanos y restaurar el orden en el universo.',
      genero: 'Acción, Aventura, Ciencia ficción',
      clasificacion: 'Todo Público',
      imagenUrl:
          'https://m.media-amazon.com/images/I/81ExhpBEbHL._AC_UF894,1000_QL80_.jpg',
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
      sinopsis:
          'Un joven león debe reclamar su derecho a ser rey después de la trágica muerte de su padre.',
      genero: 'Animación, Aventura, Drama',
      clasificacion: 'Todo Público',
      imagenUrl:
          'https://lumiere-a.akamaihd.net/v1/images/image_8b5ca578.jpeg?region=0,0,540,810',
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
      sinopsis:
          'Un grupo de astronautas viaja a través de un agujero de gusano en busca de un nuevo hogar para la humanidad.',
      genero: 'Aventura, Drama, Ciencia Ficción',
      clasificacion: 'PG-13',
      imagenUrl:
          'https://www.imdb.com/title/tt0816692/mediaviewer/rm4043724800/?ref_=tt_ov_i',
      idioma: 'Inglés',
      cines: [
        'Magic Cinema',
        'Cinemark Mall Multiplaza',
        'Cinépolis Cascadas Mall',
      ],
    ),
    Pelicula(
      nombre: 'Avatar',
      sinopsis:
          'Un ex-marine es enviado a Pandora para participar en un programa que le permite habitar el cuerpo de un Na\'vi.',
      genero: 'Acción, Aventura, Ciencia Ficción',
      clasificacion: 'PG-13',
      imagenUrl:
          'https://www.imdb.com/title/tt1630029/mediaviewer/rm92486145/?ref_=tt_ov_i',
      idioma: 'Español',
      cines: [
        'Multicinema Metro Mall',
        'Cinépolis Cascadas Mall',
        'Cinemark Mall Multiplaza',
      ],
    ),
    Pelicula(
      nombre: 'Jurassic Park',
      sinopsis:
          'Un grupo de científicos clona dinosaurios en una isla para crear un parque temático, pero los animales pronto se descontrolan.',
      genero: 'Acción, Aventura, Ciencia Ficción',
      clasificacion: 'PG-13',
      imagenUrl:
          'https://mir-s3-cdn-cf.behance.net/project_modules/hd/f00bf346385235.58520f9022451.jpg',
      idioma: 'Español',
      cines: [
        'Magic Cinema',
        'Cinemark Mall Multiplaza',
        'Cinépolis Cascadas Mall',
      ],
    ),
];
