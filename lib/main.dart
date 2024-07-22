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
  final List<Movies> upcomingMovies = [
    Movies(
      title: "Twisters",
      releaseDate: "8 de Julio 2024",
      posterUrl: "https://th.bing.com/th?id=OIF.SzHUHhoX9ejvtm1g%2fC0jCg&rs=1&pid=ImgDetMain",
    ),
    Movies(
      title: "Bob Marley: La Leyenda",
      releaseDate: "15 de Febrero 2024",
      posterUrl: "https://th.bing.com/th/id/R.e0288ba73406bdfd272027c57737095d?rik=Wx5lz4HZiI1Hkg&riu=http%3a%2f%2fwww.impawards.com%2f2024%2fposters%2fbob_marley_one_love_ver5.jpg&ehk=Be7YFgYLQi0RNeAQSr78CvMTS%2fr0g4%2bT4zu9UV1q2d4%3d&risl=&pid=ImgRaw&r=0",
    ),
    Movies(
      title: "Dune: Parte 2",
      releaseDate: "6 de Febrero 2024",
      posterUrl: "https://th.bing.com/th/id/OIP.euT_3v4i3iR_eOh3KGU8QgAAAA?rs=1&pid=ImgDetMain",
    ),
    Movies(
      title: "Back to Black",
      releaseDate: "11 de abril 2024",
      posterUrl: "https://th.bing.com/th/id/OIP.UmGyTM2_ZD-vgdRZgiEITQAAAA?rs=1&pid=ImgDetMain",
    ),
    Movies(
      title: "Challengers",
      releaseDate: "26 de marzo 2024",
      posterUrl: "https://th.bing.com/th/id/OIP.Vwf04-b_gqmHp5Or68G1GwHaK-?rs=1&pid=ImgDetMain",
    ),
    Movies(
      title: "Deadpool y Wolverine",
      releaseDate: "25 de julio 2024",
      posterUrl: "https://preview.redd.it/official-new-poster-for-deadpool-and-wolverine-v0-txne73o16iic1.jpeg?width=1080&crop=smart&auto=webp&s=1c60613d05ca418d3e4de1f367387246ca519403",
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
      descripcion: 'Incluye hot dog y Papas fritas acompañado de un refresco tamaño Grande ',
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
      descripcion: 'Incluye 1 palomitas grande mitad mantequilla mitad caramelo y  2 refrescos',
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
      imagen:
          'https://assets.unileversolutions.com/recipes-v2/236991.jpg',
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
      imagen:
          'https://powellsnl.ca/media/uploads/gs1/06700000462_1.png',
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Boletos'),
      ),
    );
  }
}

//Cartelera

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
//Final Cartelera}




//Taquilla

class Pelicula {
  final String title;
  final String releaseDate;
  final String posterUrl;
  final String description;
  final List<Sala> salas;

  Pelicula({
    required this.title,
    required this.releaseDate,
    required this.posterUrl,
    required this.description,
    required this.salas,
  });
}

class Sala {
  final String name;
  final List<String> asientos;
  final double precioAdulto;
  final double precioNino;
  final String tipoSala;

  Sala({
    required this.name,
    required this.asientos,
    required this.precioAdulto,
    required this.precioNino,
    required this.tipoSala,
  });
}

class TaquillaPage extends StatefulWidget {
  @override
  _TaquillaPageState createState() => _TaquillaPageState();
}

class _TaquillaPageState extends State<TaquillaPage> {
  final List<Pelicula> _peliculas = [
    Pelicula(
      title: "Twisters",
      releaseDate: "8 de Julio 2024",
      posterUrl: "https://th.bing.com/th?id=OIF.SzHUHhoX9ejvtm1g%2fC0jCg&rs=1&pid=ImgDetMain",
      description: "Una emocionante secuela de la película 'Twisters', donde el caos de los tornados continúa.",
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
    Pelicula(
      title: "Bob Marley: La Leyenda",
      releaseDate: "15 de Febrero 2024",
      posterUrl: "https://th.bing.com/th/id/R.e0288ba73406bdfd272027c57737095d?rik=Wx5lz4HZiI1Hkg&riu=http%3a%2f%2fwww.impawards.com%2f2024%2fposters%2fbob_marley_one_love_ver5.jpg&ehk=Be7YFgYLQi0RNeAQSr78CvMTS%2fr0g4%2bT4zu9UV1q2d4%3d&risl=&pid=ImgRaw&r=0",
      description: "Un documental sobre la vida y la música del icónico Bob Marley, celebrando su legado.",
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
    Pelicula(
      title: "Dune: Parte 2",
      releaseDate: "6 de Febrero 2024",
      posterUrl: "https://th.bing.com/th/id/OIP.euT_3v4i3iR_eOh3KGU8QgAAAA?rs=1&pid=ImgDetMain",
      description: "La continuación épica de 'Dune', siguiendo la lucha por el control del planeta Arrakis.",
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
    Pelicula(
      title: "Back to Black",
      releaseDate: "11 de abril 2024",
      posterUrl: "https://th.bing.com/th/id/OIP.UmGyTM2_ZD-vgdRZgiEITQAAAA?rs=1&pid=ImgDetMain",
      description: "Una biografía sobre la vida de la cantante Amy Winehouse y su legado musical.",
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
    Pelicula(
      title: "Challengers",
      releaseDate: "26 de marzo 2024",
      posterUrl: "https://th.bing.com/th/id/OIP.Vwf04-b_gqmHp5Or68G1GwHaK-?rs=1&pid=ImgDetMain",
      description: "Una película sobre la intensidad y los desafíos del tenis profesional.",
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
    Pelicula(
      title: "Deadpool y Wolverine",
      releaseDate: "25 de julio 2024",
      posterUrl: "https://preview.redd.it/official-new-poster-for-deadpool-and-wolverine-v0-txne73o16iic1.jpeg?width=1080&crop=smart&auto=webp&s=1c60613d05ca418d3e4de1f367387246ca519403",
      description: "Deadpool y Wolverine unen fuerzas en esta aventura llena de acción y comedia.",
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

  Pelicula? _peliculaSeleccionada;
  Sala? _salaSeleccionada;
  int _cantidadAdultos = 0;
  int _cantidadNinos = 0;
  List<String> _asientosSeleccionados = [];

  void _onPeliculaSeleccionada(Pelicula? pelicula) {
    setState(() {
      _peliculaSeleccionada = pelicula;
      _salaSeleccionada = null; // Resetear sala seleccionada al cambiar la película
      _asientosSeleccionados = []; // Resetear asientos seleccionados
    });
  }

  void _onSalaSeleccionada(Sala? sala) {
    setState(() {
      _salaSeleccionada = sala;
      _asientosSeleccionados = []; // Resetear asientos seleccionados cuando se cambia la sala
    });
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

  @override
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
                    child: Text('Selecciona una película', style: TextStyle(fontSize: 18)),
                  ),
                  DropdownButton<Pelicula>(
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
                      child: Text('Información de la película', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                    Card(
                      child: Column(
                        children: [
                          Image.network(_peliculaSeleccionada!.posterUrl),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              _peliculaSeleccionada!.title,
                              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              _peliculaSeleccionada!.description,
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Fecha de estreno: ${_peliculaSeleccionada!.releaseDate}',
                              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Selecciona una sala', style: TextStyle(fontSize: 18)),
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
                        child: Text('Selecciona asientos (${_salaSeleccionada!.tipoSala})', style: TextStyle(fontSize: 18)),
                      ),
                      Wrap(
                        spacing: 8.0,
                        runSpacing: 8.0,
                        children: _salaSeleccionada!.asientos.map((asiento) {
                          final estaSeleccionado = _asientosSeleccionados.contains(asiento);
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
                        child: Text('Asientos seleccionados: ${_asientosSeleccionados.join(', ')}', style: TextStyle(fontSize: 18)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Precio Adulto: \$${_salaSeleccionada!.precioAdulto.toStringAsFixed(2)}', style: TextStyle(fontSize: 18)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Precio Niño: \$${_salaSeleccionada!.precioNino.toStringAsFixed(2)}', style: TextStyle(fontSize: 18)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Cantidad de adultos:', style: TextStyle(fontSize: 18)),
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
                            child: Text(_cantidadAdultos.toString(), textAlign: TextAlign.center, style: TextStyle(fontSize: 18)),
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
                        child: Text('Cantidad de niños:', style: TextStyle(fontSize: 18)),
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
                            child: Text(_cantidadNinos.toString(), textAlign: TextAlign.center, style: TextStyle(fontSize: 18)),
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
                final totalAdultos = _cantidadAdultos * (_salaSeleccionada?.precioAdulto ?? 0);
                final totalNinos = _cantidadNinos * (_salaSeleccionada?.precioNino ?? 0);
                final total = totalAdultos + totalNinos;

                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Confirmar Selección'),
                      content: Text('Total: \$${total.toStringAsFixed(2)}\n\nAdultos: $_cantidadAdultos\nNiños: $_cantidadNinos\nAsientos seleccionados: ${_asientosSeleccionados.join(', ')}'),
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
                minimumSize: Size(double.infinity, 50), // Ajustar el tamaño del botón
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

  Movies({required this.title, required this.releaseDate, required this.posterUrl});
}
