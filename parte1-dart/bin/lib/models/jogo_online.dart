import 'jogo.dart';

class JogoOnline extends Jogo {
  bool modoMultiplayer;
  int numeroJogadores;

  JogoOnline({
    required super.titulo,
    required super.plataforma,
    required super.genero,
    required super.anoLancamento,
    required super.preco,
    required super.dataCadastro,
    required this.modoMultiplayer,
    required this.numeroJogadores,
  });

  @override
  String ficha() {
    return '${super.ficha()} | '
        'Multiplayer: ${modoMultiplayer ? "Sim" : "Não"} | '
        'Jogadores: $numeroJogadores';
  }
}