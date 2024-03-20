import 'package:flutter/material.dart';

class Novedad {
  final String titulo;
  final String descripcion;
  final String imageUrl;

  Novedad(
      {required this.titulo,
      required this.descripcion,
      required this.imageUrl});
}

class NovedadesView extends StatelessWidget {
  NovedadesView({super.key});

  final List<Novedad> novedades = [
    Novedad(
      titulo: "Novedad 1",
      descripcion: "Descripción corta de la novedad 1.",
      imageUrl: "https://via.placeholder.com/150",
    ),
    Novedad(
      titulo: "Novedad 2",
      descripcion: "Descripción corta de la novedad 2.",
      imageUrl: "https://via.placeholder.com/150",
    ),
    Novedad(
      titulo: "Novedad 3",
      descripcion: "Descripción corta de la novedad 2.",
      imageUrl: "https://via.placeholder.com/150",
    ),
    Novedad(
      titulo: "Novedad 4",
      descripcion: "Descripción corta de la novedad 2.",
      imageUrl: "https://via.placeholder.com/150",
    ),
    // Agrega más novedades aquí
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página de Novedades'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Acción de búsqueda aquí
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: novedades.length,
        itemBuilder: (context, index) {
          final novedad = novedades[index];
          return Card(
            child: ListTile(
              leading: Image.network(novedad.imageUrl,
                  width: 100, fit: BoxFit.cover),
              title: Text(novedad.titulo),
              subtitle: Text(novedad.descripcion),
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}
