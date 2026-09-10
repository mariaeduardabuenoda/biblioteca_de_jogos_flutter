import '../models/jogo.dart';
import '../models/jogo_online.dart';
import '../models/biblioteca.dart';

void main() {
  final jogo = Jogo(
    titulo: 'Minecraft',
    plataforma: 'PC',
    genero: 'Sandbox',
    anoLancamento: 2011,
    preco: 99.90,
    dataCadastro: DateTime.now(),
  );

  print('===== [1] ENTIDADE PRINCIPAL =====');
  print('Titulo: ${jogo.titulo}');
  print('Plataforma: ${jogo.plataforma}');
  print('Genero: ${jogo.genero}');
  print('Ano de lancamento: ${jogo.anoLancamento}');
  print('Preco: ${jogo.preco}');
  print('Data de cadastro: ${jogo.dataCadastro}');

  final jogoOnline = JogoOnline(
    titulo: 'The Legend of Zelda',
    plataforma: 'Nintendo Switch',
    genero: 'Aventura',
    anoLancamento: 2017,
    preco: 299.90,
    dataCadastro: DateTime.now(),
    modoMultiplayer: true,
    numeroJogadores: 4,
  );

  print('===== [2] HERANCA =====');
  print(jogo.ficha());
  print(jogoOnline.ficha());

  final biblioteca = Biblioteca(
    nome: 'Biblioteca Gamer',
    jogos: [jogo, jogoOnline],
  );

  print('===== [3] COMPOSICAO =====');
  print(
    'Biblioteca "${biblioteca.nome}" contém '
    '${biblioteca.jogos.length} jogos:',
  );

  for (final j in biblioteca.jogos) {
    print('  - ${j.titulo}');
  }

  print('===== [4] ENCAPSULAMENTO =====');
  print('Total de jogos: ${biblioteca.totalJogos}');

  final novoJogo = Jogo(
    titulo: 'Mortal Kombat 1',
    plataforma: 'PS5',
    genero: 'Luta',
    anoLancamento: 2023,
    preco: 299.90,
    dataCadastro: DateTime.now(),
  );

  biblioteca.adicionarJogo(novoJogo);
  print('Total de jogos após adicionar: ${biblioteca.totalJogos}');
}