import 'package:flutter/material.dart';
import '../models/jogo.dart';

class DetalhesPage extends StatelessWidget {
  final Jogo jogo;

  const DetalhesPage({super.key, required this.jogo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes do Jogo'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Cabeçalho
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue.shade50,
                ),
                child: Column(
                  children: [
                    const Icon(
                      Icons.videogame_asset,
                      size: 70,
                      color: Colors.deepPurple,
                    ),
                    const SizedBox(height: 15),
                    Text(
                      jogo.titulo,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '${jogo.plataforma} • ${jogo.genero}',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              const Text(
                'Informações do jogo',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              // Plataforma
              _informacao(
                Icons.devices,
                'Plataforma',
                jogo.plataforma,
              ),

              // Gênero
              _informacao(
                Icons.category,
                'Gênero',
                jogo.genero,
              ),

              // Ano
              _informacao(
                Icons.calendar_today,
                'Ano de lançamento',
                jogo.anoLancamento.toString(),
              ),

              // Preço
              _informacao(
                Icons.attach_money,
                'Preço',
                'R\$ ${jogo.preco.toStringAsFixed(2)}',
              ),

              // Data
              _informacao(
                Icons.event,
                'Data de cadastro',
                '${jogo.dataCadastro.day.toString().padLeft(2, '0')}/'
                    '${jogo.dataCadastro.month.toString().padLeft(2, '0')}/'
                    '${jogo.dataCadastro.year}',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _informacao(
    IconData icone,
    String titulo,
    String valor,
  ) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: Colors.grey.shade300,
        ),
      ),
      child: Row(
        children: [
          Icon(
            icone,
            color: Colors.deepPurple,
            size: 28,
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titulo,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey.shade600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  valor,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}