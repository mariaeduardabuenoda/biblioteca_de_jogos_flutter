import 'jogo.dart';

class Biblioteca {
  String nome;
  final List<Jogo> _jogos;

  Biblioteca({
    required this.nome,
    required this._jogos,
  });

  List<Jogo> get jogos => _jogos;

  int get totalJogos => _jogos.length;

  void adicionar(Jogo jogo) {
    _jogos.add(jogo);
  }
}