import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Total obtido no exercício 4
    const int totalJogos = 5;

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
            child: ListView(
              children: const [
                ListTile(
                  leading: Icon(Icons.sports_esports),
                  title: Text('Minecraft'),
                  subtitle: Text('Sandbox'),
                ),
              
                ListTile(
                  leading: Icon(Icons.sports_esports),
                  title: Text('The Legend of Zelda'),
                  subtitle: Text('Aventura'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}