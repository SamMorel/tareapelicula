import 'package:flutter/material.dart';
//import 'package:tareapelicula/widgets/plantilla.dart';
//import 'package:tareapelicula/widgets/plantilla_peticiones.dart';
import 'package:tareapelicula/widgets/plantillapeli.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Plantillapeli(),
    );
  }
}
