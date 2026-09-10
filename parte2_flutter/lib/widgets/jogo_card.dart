import 'package:flutter/material.dart';
import '../models/jogo.dart';

class JogoCard extends StatelessWidget {
  final Jogo jogo;

  const JogoCard({
    super.key,
    required this.jogo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.white,
          width: 1,
        ),
        boxShadow: const [
          BoxShadow(
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            jogo.titulo,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            'Plataforma: ${jogo.plataforma}',
            style: const TextStyle(
              color: Colors.white,
            ),
          ),

          Text(
            'Gênero: ${jogo.genero}',
            style: const TextStyle(
              color: Colors.white,
            ),
          ),

          Text(
            'Ano: ${jogo.anoLancamento}',
            style: const TextStyle(
              color: Colors.white,
            ),
          ),

          Text(
            'Preço: R\$ ${jogo.preco.toStringAsFixed(2)}',
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}