import 'jogo.dart';

class Biblioteca {
  String nome;
  List<Jogo> jogos;

  Biblioteca({
    required this.nome, 
    required this.jogos
    });

  void adicionarJogo(Jogo jogo) {
    jogos.add(jogo);
  }
}