import 'package:flutter/material.dart';
import 'clases/peliculas.dart';
//Boleteria

class BoletosPage extends StatelessWidget {
  final List<Pelicula> peliculas = [
    Pelicula(
      nombre: 'Spider-Man: Sin Camino a Casa',
      sinopsis:
          'Peter Parker se encuentra en un aprieto después de que su identidad como Spider-Man es revelada.',
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
      imagenUrl:
          'https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p10543523_p_v8_as.jpg',
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
      imagenUrl:
          'https://pics.filmaffinity.com/avatar_the_way_of_water-722646748-mmed.jpg',
      idioma: 'Inglés',
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('¡Compra tus boletos!'),
      ),
      body: ListView.builder(
        itemCount: peliculas.length,
        itemBuilder: (context, index) {
          final movie = peliculas[index];
          return Container(
            height: 250.0,
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
                            150.0, // Ajusta la altura deseada para la imagen
                        child: Image.network(
                          movie.imagenUrl,
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
                            movie.nombre,
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                              height: 8.0), // Espacio entre título y subtítulo
                          Text('${movie.sinopsis}'),
                          TextButton(
                            child: const Text('¡Ver!'),
                            onPressed: () {},
                          ),
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
