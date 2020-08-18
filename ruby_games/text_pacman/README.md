## 👾 Text Pac-Man 👾

[Read in Portuguese | Leia em Português](https://github.com/molusca/Ruby/blob/master/ruby_games/text_pacman/README.pt.md)

  In every match the player will chose between 3 difficulties that will change the map size.

### Tags:

  | **Element** | **Meaning** | **Description** |
  |-------|--------|-------------|
  | **H** | Hero | Your playable character|
  | **F** | Ghost | The enemy. It is't playable and moves randomly through the map|
  | **\*** | Bomb |  When the hero steps into the Bomb, it explodes in a 4x4 area. If there's Ghosts or other Bombs in this area, they will be destroyed. When a Ghost steps into a Bomb, he captures it and this especific Bomb leaves the map. Bombs can't affect the Hero|
  | **X** | Wall | Impossible to get through or destroy|


### Movimentation:
  The player should use the keys to inform wich direction the Hero will take his next step:
  
  | Key | Direction |
  |---|---|
  | **W** | Up |
  | **A** | Left | 
  | **S** | Down | 
  | **D** | Right |
  
  If the player informs more than one movimentation command simultaneously (E.g. "AD" or "DW"), only the first command will be considerated.

> Beta release features:
### How to lose:
- [x] When the Hero and the Ghost moves to the same spot, they colide and the Hero dies
- [ ] When there's no more Bombs, but there's still Ghosts in the map (NOT IMPLEMENTED)

### How to win:
- [ ] When all Ghosts dies from Bomb explosions (NOT IMPLEMENTED)

### Next improvement steps:
- [ ] Implement all win and lose conditions
- [ ] Make the Bomb activate other Bombs in it's explosion area, causing a chain reaction
- [ ] Make the Ghosts seek the Hero with their movimentation
- [ ] Make the hero die if he moves on porpouse at the next step Ghost.
