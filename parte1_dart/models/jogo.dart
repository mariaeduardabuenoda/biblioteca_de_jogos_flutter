class Jogo {
  String titulo;
  String plataforma;
  String genero;
  int anoLancamento;
  double preco;
  DateTime dataCadastro;

  Jogo({
    required this.titulo,
    required this.plataforma,
    required this.genero,
    required this.anoLancamento,
    required this.preco,
    required this.dataCadastro,

  });
  String ficha(){
    return 'jogo: $titulo |Plataforma: $plataforma| Genero: $genero |Ano: $anoLancamento |Preco: R\$ $preco';
  }
}