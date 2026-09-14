# biblioteca_de_jogos_flutter
Aplicativo desenvolvido em Dart e Flutter para gerenciamento de uma biblioteca de jogos, utilizando conceitos de orientação a objetos, herança, composição, encapsulamento, navegação, formulários e gerenciamento de estado. Desenvolvido como trabalho da disciplina de Programação para Dispositivos Móveis.

# Integrantes :
 Maria Bueno, Isadora Lamas 

# Dominio :

Uma biblioteca de jogos 


## Tabela de rastreio

O `README.md` do repositório precisa conter esta tabela preenchida. É por ela que a correção é fornecida, e é ela que orienta a apresentação. Sem a tabela, o trabalho não é corrigido.

## Tabela de rastreio

O `README.md` precisa conter esta tabela preenchida para a orientação da correção e apresentação.

| # | Exercício | Arquivo e linha | O que aparece na tela |
|---|---|---|---|
| 1 | Entidade principal | `parte1_dart/models/jogo.dart` | <details><summary>Clique para ver</summary>===== [1] ENTIDADE PRINCIPAL =====<br>Titulo: Minecraft<br>Plataforma: PC<br>Genero: Sandbox<br>Ano de lancamento: 2011<br>Preco: 99.9<br>Data de cadastro: 2026-09-14 10:22:33.433488</details> |
| 2 | Herança | `parte1_dart/models/jogo_online.dart` | <details><summary>Clique para ver</summary>===== [2] HERANCA =====<br>jogo: Minecraft \|Plataforma: PC\| Genero: Sandbox \|Ano: 2011 \|Preco: R$ 99.9<br>jogo: The Legend of Zelda \|Plataforma: Nintendo Switch\| Genero: Aventura \|Ano: 2017 \|Preco: R$ 299.9 \| Multiplayer: Sim \| Jogadores: 4</details> |
| 3 | Composição | `parte1_dart/models/biblioteca.dart` | <details><summary>Clique para ver</summary>===== [3] COMPOSICAO =====<br>Biblioteca "Biblioteca Gamer" contém 2 jogos:<br>- Minecraft<br>- The Legend of Zelda</details> |
| 4 | Encapsulamento | `parte1_dart/models/biblioteca.dart` | <details><summary>Clique para ver</summary>===== [4] ENCAPSULAMENTO =====<br>Total de jogos: 2<br>Total de jogos após adicionar: 3</details> |
| 5 | Estrutura de tela | `parte2_flutter/lib/screens/home_page.dart` | <details><summary>Clique para ver</summary>AppBar e corpo da tela inicial com o título "Biblioteca de Jogos"</details> |
| 6 | Cartão | `parte2_flutter/lib/widgets/jogo_card.dart` | <details><summary>Clique para ver</summary>Card estilizado exibindo os detalhes visuais de cada jogo na lista</details> |
| 7 | Lista | `parte2_flutter/lib/screens/home_page.dart` | <details><summary>Clique para ver</summary>Lista rolante (ListView) contendo os jogos cadastrados</details> |
| 8 | Navegação | `parte2_flutter/lib/screens/home_page.dart:30` | <details><summary>Clique para ver</summary>Toque no item abre a tela com os detalhes do jogo</details> |
| 9 | Formulário | `parte2_flutter/lib/screens/cadastro_page.dart:18` | <details><summary>Clique para ver</summary>Tela com campos para cadastrar novos jogos</details> |
| 10 | Estado | `parte2_flutter/lib/screens/home_page.dart:40` | <details><summary>Clique para ver</summary>Item novo adicionado na lista e interface totalmente atualizada</details> |
