import 'package:flutter/material.dart';
import '../models/jogo.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  final tituloController = TextEditingController();
  final plataformaController = TextEditingController();
  final precoController = TextEditingController();

  @override
  void dispose() {
    tituloController.dispose();
    plataformaController.dispose();
    precoController.dispose();
    super.dispose();
  }

  void cadastrarJogo() {
    final titulo = tituloController.text;
    final plataforma = plataformaController.text;
    final preco = double.tryParse(precoController.text);

    if (titulo.isEmpty || plataforma.isEmpty || preco == null) {
      return;
    }

    final novoJogo = Jogo(
      titulo: titulo,
      plataforma: plataforma,
      genero: 'Não informado',
      anoLancamento: DateTime.now().year,
      preco: preco,
      dataCadastro: DateTime.now(),
    );

    Navigator.of(context).pop(novoJogo);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cadastrar Jogo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: tituloController,
              decoration: const InputDecoration(
                labelText: 'Título',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 16),

            TextFormField(
              controller: plataformaController,
              decoration: const InputDecoration(
                labelText: 'Plataforma',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 16),

            TextFormField(
              controller: precoController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Preço',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: cadastrarJogo,
              child: const Text('Cadastrar'),
            ),
          ],
        ),
      ),
    );
  }
}