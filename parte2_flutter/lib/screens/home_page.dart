import 'package:flutter/material.dart';
import '../models/jogo.dart';
import '../models/biblioteca.dart';
import '../widgets/jogo_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Biblioteca que agrupa os jogos
    final biblioteca = Biblioteca(
      nome: 'Minha Biblioteca',
      jogos: [
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
        ),

        Jogo(
          titulo: 'Mortal Kombat 1',
          plataforma: 'PS5',
          genero: 'Luta',
          anoLancamento: 2023,
          preco: 299.90,
          dataCadastro: DateTime(2026, 9, 1),
        ),

        Jogo(
          titulo: 'Fortnite',
          plataforma: 'PC',
          genero: 'Battle Royale',
          anoLancamento: 2017,
          preco: 0.0,
          dataCadastro: DateTime(2026, 9, 1),
        ),

        Jogo(
          titulo: 'God of War',
          plataforma: 'PS5',
          genero: 'Ação',
          anoLancamento: 2018,
          preco: 249.90,
          dataCadastro: DateTime(2026, 9, 1),
        ),

        Jogo(
          titulo: 'Super Mario Odyssey',
          plataforma: 'Nintendo Switch',
          genero: 'Plataforma',
          anoLancamento: 2017,
          preco: 299.90,
          dataCadastro: DateTime(2026, 9, 1),
        ),
      ],
    );

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
          // Total de jogos da Biblioteca
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Total de jogos: ${biblioteca.totalJogos}',
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Lista dinâmica do exercício 7
          Expanded(
            child: ListView.builder(
              itemCount: biblioteca.jogos.length,
              itemBuilder: (context, index) {
                return JogoCard(
                  jogo: biblioteca.jogos[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}