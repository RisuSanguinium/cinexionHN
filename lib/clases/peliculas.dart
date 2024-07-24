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
