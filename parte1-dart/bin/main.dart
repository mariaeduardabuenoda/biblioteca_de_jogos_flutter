import 'lib/models/jogo.dart';

void main(){
  final jogo = Jogo(
    titulo: 'Minecraft',
    genero: 'Sandbox',
    anoLancamento: 2011,
    preco: 99.90,
    dataCadastro: DateTime.now(),
  );
  
  print('Titulo: ${jogo.titulo}');
  print('Genero: ${jogo.genero}');
  print('Ano de lancamento: ${jogo.anoLancamento}');
  print('Preco: ${jogo.preco}');
  print('Data de cadastro: ${jogo.dataCadastro}');
}