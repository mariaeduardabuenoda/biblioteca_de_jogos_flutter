import 'package:flutter/material.dart';
import '../models/jogo.dart';
import '../../widgets/jogo_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Total obtido no exercício 4
    const int totalJogos = 2;

    //Objetos da biblioteca 
    final List<Jogo> jogos = [
      Jogo( 
        titulo: 'Minecraft',
        plataforma: 'PC',
        genero: 'Sandbox',
        anoLancamento: 2011,
        preco: 99.90,
        dataCadastro: DateTime(2026, 9, 1),
      ),

      Jogo( 
        titulo: 'The Legend of Zelda',
        plataforma: 'Nintendo Switch',
        genero: 'Aventura',
        anoLancamento: 2017,
        preco: 199.90,
        dataCadastro: DateTime(2026, 9, 1),
      )
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Biblioteca de Jogos'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Total do exercício 4
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Total de jogos: $totalJogos',
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

        
          // Lista do exercício 7
          Expanded(
            child: ListView.builder(
              itemCount: jogos.length,
              itemBuilder: (context, index) {
                return JogoCard(
                  jogo: jogos[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}