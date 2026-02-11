import 'package:flutter/material.dart';

void main() => runApp(AppCinepolis());

class AppCinepolis extends StatelessWidget {
  const AppCinepolis({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LasPeliculas(),
    );
  }
}//Fin clase AppCinepolis

class LasPeliculas extends StatelessWidget {
  const LasPeliculas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
    title: const Text(
      'Cinépolis la Valtierra',
      style: TextStyle(color: Colors.white),
   ),
    // El leading es el icono que aparece al principio (izquierda)
    leading: const Icon(
      Icons.movie,
      color: Colors.white,
   ),
    // Los actions son la lista de iconos al final (derecha)
    actions: const [
      Icon(Icons.build, color: Colors.white),       // Herramienta
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Icon(Icons.emergency, color: Colors.white), // Emergencia
      ),
      Padding(
        padding: EdgeInsets.only(right: 15),
        child: Icon(Icons.camera_alt, color: Colors.white), // Cámara
      ),
    ],
    // Aquí creamos el degradado "Azul Rey"
    flexibleSpace: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFF003399), // Azul Rey oscuro
            Color(0xFF0055CC), // Azul Rey claro
          ],
        ),
      ),
    ),
  ),
  body:ListView(
  padding: const EdgeInsets.all(15.0),
  children: [
    // Pasamos el título, subtítulo y una URL de imagen diferente para cada uno
    _crearTarjeta(
      titulo: "Avengers: Endgame", 
      subtitulo: "Estreno Mundial", 
      urlImagen: "https://raw.githubusercontent.com/JazminAnaya/Imagenes-para-flutter-6toI-fecha-11-feb-2026/refs/heads/main/avengers_endgame.jpg"
    ),
    _crearTarjeta(
      titulo: "Spider-Man: No Way Home", 
      subtitulo: "Sala IMAX", 
      urlImagen: "https://raw.githubusercontent.com/JazminAnaya/Imagenes-para-flutter-6toI-fecha-11-feb-2026/refs/heads/main/spiderman.jpg"
    ),
    _crearTarjeta(
      titulo: "Batman", 
      subtitulo: "Función Nocturna", 
      urlImagen: "https://raw.githubusercontent.com/JazminAnaya/Imagenes-para-flutter-6toI-fecha-11-feb-2026/refs/heads/main/batman.jpg"
    ),
    _crearTarjeta(
      titulo: "Avatar: El Camino del Agua", 
      subtitulo: "Disponible en 3D", 
      urlImagen: "https://raw.githubusercontent.com/JazminAnaya/Imagenes-para-flutter-6toI-fecha-11-feb-2026/refs/heads/main/avatar.jpg"
    ),
  ],
), 
    );//Fin scaffold
  }
}//Fin de la clase lasPeliculas

Widget _crearTarjeta({
  required String titulo, 
  required String subtitulo, 
  required String urlImagen, // Nuevo parámetro
}) {
  return Card(
    color: const Color(0xFFE3F2FD), // Azul claro
    elevation: 6.0,                // Sombra
    margin: const EdgeInsets.only(bottom: 15),
    child: ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(urlImagen), // Usamos la URL recibida
      ),
      title: Text(
        titulo,
        style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        subtitulo,
        style: const TextStyle(color: Colors.black),
      ),
      trailing: const Icon(
        Icons.thumb_up,
        color: Color.fromARGB(255, 5, 57, 17), // Like amarillo
      ),
    ),
  );
}