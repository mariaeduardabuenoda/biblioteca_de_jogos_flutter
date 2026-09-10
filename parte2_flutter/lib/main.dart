import 'package:flutter/material.dart';
import 'package:parte2_flutter/screens/home_page.dart';

void main() {
  runApp(const BibliotecaDeJogosFlutter());
}

class BibliotecaDeJogosFlutter extends StatelessWidget {
  const BibliotecaDeJogosFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Biblioteca de Jogos',
      home: HomePage(),
    );
  }
}