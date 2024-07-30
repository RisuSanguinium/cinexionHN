import 'package:flutter/material.dart';
import 'homePage.dart';
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
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),
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