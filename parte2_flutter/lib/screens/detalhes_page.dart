import 'package:flutter/material.dart';
import '../models/jogo.dart';

class DetalhesPage extends StatelessWidget {
  final Jogo jogo;

  const DetalhesPage({super.key, required this.jogo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detalhes do Jogo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              jogo.titulo,
              style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            Text('Plataforma: ${jogo.plataforma}'),
            Text('Gênero: ${jogo.genero}'),
            Text('Ano de lançamento: ${jogo.anoLancamento}'),
            Text('Preço: R\$ ${jogo.preco}'),
            Text('Data de cadastro: ${jogo.dataCadastro}'),
          ],
        ),
      ),
    );
  }
}
