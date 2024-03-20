import 'package:flutter/material.dart';

class FormularioView extends StatelessWidget {
  const FormularioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Formulario')),
      body: const Center(child: Text('Página de Formulario')),
    );
  }
}
