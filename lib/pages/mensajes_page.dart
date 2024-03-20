import 'package:flutter/material.dart';

class MensajesView extends StatelessWidget {
  const MensajesView({super.key});

  final List<Map<String, dynamic>> mensajes = const [
    {
      "titulo": "Mensaje 1",
      "contenido": "Este es el contenido del mensaje 1.",
      "fecha": "12/03/2024",
    },
    {
      "titulo": "Mensaje 2",
      "contenido": "Este es el contenido del mensaje 2.",
      "fecha": "12/03/2024",
    },
    {
      "titulo": "Mensaje 3",
      "contenido": "Este es el contenido del mensaje 3.",
      "fecha": "12/03/2024",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold( 

      body: ListView.builder(
        itemCount: mensajes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(mensajes[index]["titulo"]),
            subtitle: Text(mensajes[index]["contenido"]),
            trailing: Text(mensajes[index]["fecha"]),
            onTap: () {
              // Aquí podrías, por ejemplo, navegar a una nueva pantalla con los detalles del mensaje.
            },
          );
        },
      ),
    );
  }
}
