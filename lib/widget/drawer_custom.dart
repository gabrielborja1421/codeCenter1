import 'package:codecenter/articulos/flutter_class.dart';
import 'package:codecenter/pages/flutter_doc.dart';
import 'package:flutter/material.dart';

class DrawerCustom extends StatelessWidget {
  const DrawerCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(40.0),
            child: const Text(
              "Lenguajes Actuales",
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Whisper',
                  fontWeight: FontWeight.bold),
            ),
          ),
          optionCardsDrawer(
            context: context,
            title: 'Flutter',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FlutterDoc(
                    home: FlutterClass(),
                  ),
                ),
              );
            },
          ),
          optionCardsDrawer(
            context: context,
            title: 'Python',
            subttitle: 'Programas de escritorio',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FlutterDoc(
                    home: Center(
                      child: Text('Hola, soy la pagina de Python'),
                    ),
                  ),
                ),
              );
            },
          ),
          optionCardsDrawer(
            context: context,
            title: 'Java',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FlutterDoc(
                    home: Center(
                      child: Text('Hola, soy la pagina de Java'),
                    ),
                  ),
                ),
              );
            },
          ),
          optionCardsDrawer(
            context: context,
            title: 'C++',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FlutterDoc(
                      home: ListView(children: [
                        Container(
                          padding: const EdgeInsets.all(5.0),
                          child: Image.network(
                              "https://www.mashfrog.com/sites/default/files/2023-02/1920x1080_cover_B%20%281%29.png"),
                        ),
                      ]),
                    ),
                  ));
            },
          ),
          optionCardsDrawer(
            context: context,
            title: 'C#',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FlutterDoc(
                      home: ListView(children: [
                        Container(
                          padding: const EdgeInsets.all(5.0),
                          child: Image.network(
                              "https://www.mashfrog.com/sites/default/files/2023-02/1920x1080_cover_B%20%281%29.png"),
                        ),
                      ]),
                    ),
                  ));
            },
          ),
        ],
      ),
    );
  }

  GestureDetector optionCardsDrawer({
    required BuildContext context,
    required String title,
    required void Function() onTap,
    String? subttitle,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        title: Text(title),
        subtitle: subttitle == null ? null : Text(subttitle),
        trailing: const Icon(Icons.arrow_right),
      ),
    );
  }
}
