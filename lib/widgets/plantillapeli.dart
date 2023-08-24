import 'package:flutter/material.dart';
import "package:cached_network_image/cached_network_image.dart";

//void main() {
//  runApp(const MaterialApp(
//    home: Plantillapeli(),
//  ));
//}

class Plantillapeli extends StatelessWidget {
  const Plantillapeli({Key? key});

  @override
  Widget build(BuildContext context) {
    String descripcion =
        "With the price on his head ever increasing, John Wick uncovers a path to defeating The High Table. But before he can earn his freedom, Wick must face off against a new enemy with powerful alliances across the globe and forces that turn old friends into foes.";

    return Scaffold(
      appBar: AppBar(
        title: const Text("Detalles de la Película"),
      ),
      body: Center(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CachedNetworkImage(
                  imageUrl:
                      'https://www.themoviedb.org/t/p/original/vppo7eOOkkjoSoBSglYIxLDB0dJ.jpg',
                  width: 100,
                  height: 150,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "John Wick: Capítulo 4",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow),
                            SizedBox(width: 5),
                            Text(
                              "8,0",
                              style: TextStyle(
                                color: Color.fromARGB(255, 16, 51, 163),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '${descripcion.length < 150 ? descripcion : descripcion.substring(0, 150)}...',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
