##  🎯 Jogo da Adivinhação 🎯

[Read in English | Leia em Inglês](https://github.com/molusca/Ruby/blob/master/ruby_games/guessing_game/README.md)

O jogo escolherá um número inteiro aleatório e a sua tarefa é acertá-lo

### Dificuldade:
A dificuldade define o range em que o número secreto será escolhido:

  | Dificuldade      | Range  |
  |----------------|-------------------|
  | 1 - Muito Fácil  | Entre 0 e 30  |
  | 2 - Fácil       | Entre 0 e 60  |
  | 3 - Médio     | Entre 0 e 100 |
  | 4 - Difícil       | Entre 0 e 150 |
  | 5 - Impossível | Entre 0 e 200 |
  
### Instruções:
  O jogador tem 5 chances para acertar o número
  
  O jogador começa com 1000 pontos

  Se o jogador errar um chute, ele perde em pontos a metade da diferença entre o número chutado e o número secreto.
  > Exemplo: número secreto = **50**, número chutado = **40**. Então, **50**-**40** = **10** -> **10**/2 = **5**. O jogador perde **5** pontos.

  No final da rodada o jogador saberá quantos pontos ele tem no total!
