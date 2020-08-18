## 👾 Text Pac-Man 👾

[Read in English | Leia em Inglês](https://github.com/molusca/Ruby/blob/master/ruby_games/text_pacman/README.md)
  
  Em cada partida o jogador irá escolher entre 3 dificuldades, que mudarão o tamanho do mapa.

### Tags:

  | **Elemento** | **Significado** | **Descrição** |
  |-------|--------|-------------|
  | **H** | Herói | Seu personagem jogável |
  | **F** | Fantasma | O inimigo. Não é jogável e se move randomicamente pelo mapa |
  | **\*** | Bomba |  Quando o herói pisa na bomba, ela explode em uma área de 4x4. Se há Fantasmas ou outras Bombas nessa área, eles serão destruídos. Quando um Fantasma pisa em uma bomba, ele a captura e essa bomba sai do mapa. Bombas não afetam o Herói |
  | **X** | Parede | Impossível atravessar ou destruir |


### Movimentação:
  O jogador deve usar as teclas para informar em qual direção o Herói andará:
  
  | Tecla | Direção |
  |---|---|
  | **W** | Cima |
  | **A** | Esquerda | 
  | **S** | Baixo | 
  | **D** | Direita |
  
  Se o jogador informar mais do que um comando de movimentação ao mesmo tempo (Ex: `A`+`D` ou `D`+`W`), apenas o primeiro comando será considerado.

> Funcionalidades da versão Beta:

### Como perder:
- [x] Quando o Herói e o Fantasma se movem para o mesmo local, eles colidem e o Herói morre
- [ ] Quando não acabam as Bombas mas ainda há Fantasmas no mapa (NÃO IMPLEMENTADO)

### Como ganhar:
- [ ] Quando todos os Fantasmas morrem por explosões de Bombas (NÃO IMPLEMENTADO)

### Próximos passos de melhoria:
- [ ] Implementar todas as condições de vitória e derrota
- [ ] Fazer a Bomba ativar outras Bombas no seu raio de explosão, causando uma reação em cadeia
- [ ] Fazer os Fantasmas perseguirem o Herói na sua movimentação
- [ ] Fazer o Herói morrer se ele se mover de propósito no lugar atual do Fantasma
