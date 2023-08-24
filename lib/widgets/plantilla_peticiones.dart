import 'package:flutter/material.dart';

void main() {
  runApp(const Plantillapeticiones());
}

class Movie {
  final String title;
  final String description;
  final String imageUrl;

  Movie(
      {required this.title, required this.description, required this.imageUrl});
}

class Plantillapeticiones extends StatelessWidget {
  const Plantillapeticiones({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PeticionesPage(),
    );
  }
}

class PeticionesPage extends StatelessWidget {
  const PeticionesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Movie> peliculas = [
      Movie(
        title: 'Blue Beetle',
        description:
            'Miguel de Cobre Kai se encuentre un escarabajo por que que deja el karate y se dedica a salvar a damiselas en apuros',
        imageUrl: 'URL de la imagen 1',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Filas de Películas'),
      ),
      body: Center(
        child: ListaPeliculas(peliculas: peliculas),
      ),
    );
  }
}

class ListaPeliculas extends StatelessWidget {
  final List<Movie> peliculas;

  const ListaPeliculas({super.key, required this.peliculas});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: peliculas.length,
      itemBuilder: (context, index) {
        final pelicula = peliculas[index];

        return ItemPelicula(
          pelicula: pelicula,
        );
      },
    );
  }
}

class ItemPelicula extends StatelessWidget {
  final Movie pelicula;

  const ItemPelicula({super.key, required this.pelicula});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: GestureDetector(
        onTap: () {
          // Lógica para mostrar detalles de la película
        },
        child: Card(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                pelicula.imageUrl,
                width: 120,
                fit: BoxFit.cover,
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(pelicula.title),
                    Text(
                      '${pelicula.description.length < 100 ? pelicula.description : pelicula.description.substring(0, 100)}...',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
