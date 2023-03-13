import 'package:dam_u2_practica1_aplicacionbasica/aplicacionbasica.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicacion Básica',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MiApp(),
    );
  }
}