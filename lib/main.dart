import 'package:flutter/material.dart';
import 'cartelera.dart';


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

/*Dulceria*/
class Combos {
  final String nombre;
  final String descripcion;
  final double precio;
  final String imagen;
  int cantidad;

  Combos({
    required this.nombre,
    required this.descripcion,
    required this.precio,
    required this.imagen,
    this.cantidad = 0,
  });
}

/*clase diseño*/
class DulceriaPage extends StatelessWidget {
  final List<Combos> combos = [
    Combos(
      nombre: 'Combo 1',
      descripcion: 'Incluye Palomitas y un Refresco tamaño Grande ',
      precio: 120.0,
      imagen:
          'https://media.istockphoto.com/photos/popcorn-in-box-with-cola-picture-id497858028?k=20&m=497858028&s=612x612&w=0&h=NXeB5bOmOwRP9-ybfBSkK3vSEz8brE9U6NbHWBaAjfs=',
    ),
    Combos(
      nombre: 'Combo 2',
      descripcion: 'Incluye nachos y refresco tamaño Grande',
      precio: 120.0,
      imagen:
          'https://http2.mlstatic.com/D_NQ_NP_627207-MLM31707538982_082019-V.jpg',
    ),
    Combos(
      nombre: 'Combo 3',
      descripcion:
          'Incluye hot dog y Papas fritas acompañado de un refresco tamaño Grande ',
      precio: 120.0,
      imagen:
          'https://www.cowabungabay.com/content/uploads/2021/10/hot-dog-combo.png',
    ),
    Combos(
      nombre: 'Combo  4',
      descripcion: 'Incluye 1 palomitas medianas, 2 refrescos',
      precio: 180.0,
      imagen:
          'https://archivos-cms.cinecolombia.com/images/_aliases/medium/5/4/5/3/13545-7-esl-CO/borrar.png',
    ),
    Combos(
      nombre: 'Combo 5',
      descripcion:
          'Incluye 1 palomitas grande mitad mantequilla mitad caramelo y  2 refrescos',
      precio: 200.0,
      imagen:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-0F-J64SuTV8htIFmowMXprcJ85iZrPIacDD2WtLVUg&s',
    ),
    Combos(
      nombre: 'Combo 6',
      descripcion: 'Incluye 1 palomitas extra pequeña 1 refresco',
      precio: 80.0,
      imagen:
          'https://static9.depositphotos.com/1076754/1182/v/450/depositphotos_11824978-stock-illustration-popcorn-and-a-drink.jpg',
    ),
    Combos(
      nombre: 'Combo 7',
      descripcion: 'Incluye 5 churros y 1 refresco mediano',
      precio: 80.0,
      imagen: 'https://assets.unileversolutions.com/recipes-v2/236991.jpg',
    ),
    Combos(
      nombre: 'Combo 8',
      descripcion: 'Incluye 1 Helado',
      precio: 40.0,
      imagen:
          'https://cdn.queapetito.com/wp-content/uploads/2019/06/Helado-de-banana-split-1200-amp.jpg',
    ),
    Combos(
      nombre: 'Combo 9',
      descripcion: 'Incluye 1 dulce m&m',
      precio: 20.0,
      imagen:
          'https://res.cloudinary.com/walmart-labs/image/upload/w_960,dpr_auto,f_auto,q_auto:best/gr/images/product-images/img_large/00750617450045L.jpg',
    ),
    Combos(
      nombre: 'Combo 10',
      descripcion: '1 refresco',
      precio: 25.0,
      imagen: 'https://powellsnl.ca/media/uploads/gs1/06700000462_1.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dulceria'),
      ),
      body: ListView.builder(
        itemCount: combos.length,
        itemBuilder: (context, index) {
          final combo = combos[index];
          return Card(
            child: ListTile(
              leading: Image.network(combo.imagen),
              title: Text(combo.nombre),
              subtitle: Text(combo.descripcion),
              trailing: Text('\$${combo.precio.toString()}'),
            ),
          );
        },
      ),
    );
  }
}

/*final de dulceria*/

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
void _onAsientoSeleccionado(String asiento) {
  setState(() {
    if (_asientosSeleccionados.contains(asiento)) {
      _asientosSeleccionados.remove(asiento);
    } else {
      _asientosSeleccionados.add(asiento);
    }
  });
}

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
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fca.yotoplay.com%2Fproducts%2Ftoy-story&psig=AOvVaw00wBKNHKXyl3x-Hx7VlI3M&ust=1721606418157000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCPDor-rptocDFQAAAAAdAAAAABAJ',
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
  final List<PeliculaT> _peliculas = [
    PeliculaT(
      title: "Twisters",
      releaseDate: "8 de Julio 2024",
      posterUrl:
          "https://th.bing.com/th?id=OIF.SzHUHhoX9ejvtm1g%2fC0jCg&rs=1&pid=ImgDetMain",
      description:
          "Una emocionante secuela de la película 'Twisters', donde el caos de los tornados continúa.",
      salas: [
        Sala(
          name: "Sala 1",
          asientos: List.generate(20, (index) => "A${index + 1}"),
          precioAdulto: 100.0,
          precioNino: 50.0,
          tipoSala: "2D",
        ),
        Sala(
          name: "Sala 2",
          asientos: List.generate(30, (index) => "B${index + 1}"),
          precioAdulto: 120.0,
          precioNino: 60.0,
          tipoSala: "3D",
        ),
        Sala(
          name: "Sala VIP",
          asientos: List.generate(15, (index) => "C${index + 1}"),
          precioAdulto: 180.0,
          precioNino: 90.0,
          tipoSala: "VIP",
        ),
      ],
    ),
    PeliculaT(
      title: "Bob Marley: La Leyenda",
      releaseDate: "15 de Febrero 2024",
      posterUrl:
          "https://th.bing.com/th/id/R.e0288ba73406bdfd272027c57737095d?rik=Wx5lz4HZiI1Hkg&riu=http%3a%2f%2fwww.impawards.com%2f2024%2fposters%2fbob_marley_one_love_ver5.jpg&ehk=Be7YFgYLQi0RNeAQSr78CvMTS%2fr0g4%2bT4zu9UV1q2d4%3d&risl=&pid=ImgRaw&r=0",
      description:
          "Un documental sobre la vida y la música del icónico Bob Marley, celebrando su legado.",
      salas: [
        Sala(
          name: "Sala 1",
          asientos: List.generate(20, (index) => "A${index + 1}"),
          precioAdulto: 110.0,
          precioNino: 55.0,
          tipoSala: "2D",
        ),
        Sala(
          name: "Sala 2",
          asientos: List.generate(30, (index) => "B${index + 1}"),
          precioAdulto: 130.0,
          precioNino: 65.0,
          tipoSala: "3D",
        ),
        Sala(
          name: "Sala VIP",
          asientos: List.generate(15, (index) => "C${index + 1}"),
          precioAdulto: 190.0,
          precioNino: 95.0,
          tipoSala: "VIP",
        ),
      ],
    ),
    PeliculaT(
      title: "Dune: Parte 2",
      releaseDate: "6 de Febrero 2024",
      posterUrl:
          "https://th.bing.com/th/id/OIP.euT_3v4i3iR_eOh3KGU8QgAAAA?rs=1&pid=ImgDetMain",
      description:
          "La continuación épica de 'Dune', siguiendo la lucha por el control del planeta Arrakis.",
      salas: [
        Sala(
          name: "Sala 1",
          asientos: List.generate(20, (index) => "A${index + 1}"),
          precioAdulto: 120.0,
          precioNino: 60.0,
          tipoSala: "2D",
        ),
        Sala(
          name: "Sala 2",
          asientos: List.generate(30, (index) => "B${index + 1}"),
          precioAdulto: 140.0,
          precioNino: 70.0,
          tipoSala: "3D",
        ),
        Sala(
          name: "Sala VIP",
          asientos: List.generate(15, (index) => "C${index + 1}"),
          precioAdulto: 200.0,
          precioNino: 100.0,
          tipoSala: "VIP",
        ),
      ],
    ),
    PeliculaT(
      title: "Back to Black",
      releaseDate: "11 de abril 2024",
      posterUrl:
          "https://th.bing.com/th/id/OIP.UmGyTM2_ZD-vgdRZgiEITQAAAA?rs=1&pid=ImgDetMain",
      description:
          "Una biografía sobre la vida de la cantante Amy Winehouse y su legado musical.",
      salas: [
        Sala(
          name: "Sala 1",
          asientos: List.generate(20, (index) => "A${index + 1}"),
          precioAdulto: 90.0,
          precioNino: 45.0,
          tipoSala: "2D",
        ),
        Sala(
          name: "Sala 2",
          asientos: List.generate(30, (index) => "B${index + 1}"),
          precioAdulto: 110.0,
          precioNino: 55.0,
          tipoSala: "3D",
        ),
        Sala(
          name: "Sala VIP",
          asientos: List.generate(15, (index) => "C${index + 1}"),
          precioAdulto: 170.0,
          precioNino: 85.0,
          tipoSala: "VIP",
        ),
      ],
    ),
    PeliculaT(
      title: "Challengers",
      releaseDate: "26 de marzo 2024",
      posterUrl:
          "https://th.bing.com/th/id/OIP.Vwf04-b_gqmHp5Or68G1GwHaK-?rs=1&pid=ImgDetMain",
      description:
          "Una película sobre la intensidad y los desafíos del tenis profesional.",
      salas: [
        Sala(
          name: "Sala 1",
          asientos: List.generate(20, (index) => "A${index + 1}"),
          precioAdulto: 100.0,
          precioNino: 50.0,
          tipoSala: "2D",
        ),
        Sala(
          name: "Sala 2",
          asientos: List.generate(30, (index) => "B${index + 1}"),
          precioAdulto: 120.0,
          precioNino: 60.0,
          tipoSala: "3D",
        ),
        Sala(
          name: "Sala VIP",
          asientos: List.generate(15, (index) => "C${index + 1}"),
          precioAdulto: 180.0,
          precioNino: 90.0,
          tipoSala: "VIP",
        ),
      ],
    ),
    PeliculaT(
      title: "Deadpool y Wolverine",
      releaseDate: "25 de julio 2024",
      posterUrl:
          "https://preview.redd.it/official-new-poster-for-deadpool-and-wolverine-v0-txne73o16iic1.jpeg?width=1080&crop=smart&auto=webp&s=1c60613d05ca418d3e4de1f367387246ca519403",
      description:
          "Deadpool y Wolverine unen fuerzas en esta aventura llena de acción y comedia.",
      salas: [
        Sala(
          name: "Sala 1",
          asientos: List.generate(20, (index) => "A${index + 1}"),
          precioAdulto: 130.0,
          precioNino: 65.0,
          tipoSala: "2D",
        ),
        Sala(
          name: "Sala 2",
          asientos: List.generate(30, (index) => "B${index + 1}"),
          precioAdulto: 150.0,
          precioNino: 75.0,
          tipoSala: "3D",
        ),
        Sala(
          name: "Sala VIP",
          asientos: List.generate(15, (index) => "C${index + 1}"),
          precioAdulto: 210.0,
          precioNino: 105.0,
          tipoSala: "VIP",
        ),
      ],
    ),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Taquilla'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Selecciona una película',
                        style: TextStyle(fontSize: 18)),
                  ),
                  DropdownButton<PeliculaT>(
                    value: _peliculaSeleccionada,
                    hint: Text('Selecciona una película'),
                    onChanged: _onPeliculaSeleccionada,
                    items: _peliculas.map((pelicula) {
                      return DropdownMenuItem(
                        value: pelicula,
                        child: Text(pelicula.title),
                      );
                    }).toList(),
                  ),
                  if (_peliculaSeleccionada != null) ...[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Información de la película',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                    Card(
                      child: Column(
                        children: [
                          Image.network(_peliculaSeleccionada!.posterUrl),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              _peliculaSeleccionada!.title,
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              _peliculaSeleccionada!.description,
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Fecha de estreno: ${_peliculaSeleccionada!.releaseDate}',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.grey[600]),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Selecciona una sala',
                          style: TextStyle(fontSize: 18)),
                    ),
                    DropdownButton<Sala>(
                      value: _salaSeleccionada,
                      hint: Text('Selecciona una sala'),
                      onChanged: _onSalaSeleccionada,
                      items: _peliculaSeleccionada!.salas.map((sala) {
                        return DropdownMenuItem(
                          value: sala,
                          child: Text('${sala.name} (${sala.tipoSala})'),
                        );
                      }).toList(),
                    ),
                    if (_salaSeleccionada != null) ...[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            'Selecciona asientos (${_salaSeleccionada!.tipoSala})',
                            style: TextStyle(fontSize: 18)),
                      ),
                      Wrap(
                        spacing: 8.0,
                        runSpacing: 8.0,
                        children: _salaSeleccionada!.asientos.map((asiento) {
                          final estaSeleccionado =
                              _asientosSeleccionados.contains(asiento);
                          return ChoiceChip(
                            label: Text(asiento),
                            selected: estaSeleccionado,
                            onSelected: (seleccionado) {
                              _onAsientoSeleccionado(asiento);
                            },
                          );
                        }).toList(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            'Asientos seleccionados: ${_asientosSeleccionados.join(', ')}',
                            style: TextStyle(fontSize: 18)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            'Precio Adulto: \$${_salaSeleccionada!.precioAdulto.toStringAsFixed(2)}',
                            style: TextStyle(fontSize: 18)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            'Precio Niño: \$${_salaSeleccionada!.precioNino.toStringAsFixed(2)}',
                            style: TextStyle(fontSize: 18)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Cantidad de adultos:',
                            style: TextStyle(fontSize: 18)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove),
                            onPressed: () {
                              setState(() {
                                if (_cantidadAdultos > 0) _cantidadAdultos--;
                              });
                            },
                          ),
                          Container(
                            width: 50,
                            child: Text(_cantidadAdultos.toString(),
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 18)),
                          ),
                          IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {
                              setState(() {
                                _cantidadAdultos++;
                              });
                            },
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Cantidad de niños:',
                            style: TextStyle(fontSize: 18)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove),
                            onPressed: () {
                              setState(() {
                                if (_cantidadNinos > 0) _cantidadNinos--;
                              });
                            },
                          ),
                          Container(
                            width: 50,
                            child: Text(_cantidadNinos.toString(),
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 18)),
                          ),
                          IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {
                              setState(() {
                                _cantidadNinos++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ],
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Aquí podrías manejar la confirmación de selección o navegación a otra pantalla
                final totalAdultos =
                    _cantidadAdultos * (_salaSeleccionada?.precioAdulto ?? 0);
                final totalNinos =
                    _cantidadNinos * (_salaSeleccionada?.precioNino ?? 0);
                final total = totalAdultos + totalNinos;

                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Confirmar Selección'),
                      content: Text(
                          'Total: \$${total.toStringAsFixed(2)}\n\nAdultos: $_cantidadAdultos\nNiños: $_cantidadNinos\nAsientos seleccionados: ${_asientosSeleccionados.join(', ')}'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: Text('Cancelar'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            // Aquí puedes manejar la confirmación de la selección y proceder con la compra.
                          },
                          child: Text('Confirmar'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Confirmar Selección'),
              style: ElevatedButton.styleFrom(
                minimumSize:
                    Size(double.infinity, 50), // Ajustar el tamaño del botón
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Final de taquilla

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
