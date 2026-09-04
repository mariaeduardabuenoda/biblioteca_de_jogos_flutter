import 'lib/models/jogo.dart';
import 'lib/models/jogo_online.dart';


void main(){
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
}