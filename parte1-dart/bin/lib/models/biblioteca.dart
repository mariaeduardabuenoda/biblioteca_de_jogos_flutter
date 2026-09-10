import 'jogo.dart';

class Biblioteca {
  String nome;
  List<Jogo> _jogos;

  Biblioteca({
    required this.nome,
    required List<Jogo> jogos,
  }) : _jogos = jogos;

  void adicionarJogo(Jogo jogo) {
    _jogos.add(jogo);
  }

  int get totalJogos => _jogos.length;
}