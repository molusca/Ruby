## 😵 Hangman 😵

[Read in Portuguese | Leia em Português](https://github.com/molusca/Ruby/blob/master/ruby_games/README.pt.md)

### How to play:
- The game will chose randomly one of the 10 secret words in `dicionario.txt` (you can change them locally if you want). Your task is to find the complete word!
- Give only **single letters** or **complete words** as shots, the game won't consider partial shots
- The game ends when the player find and types the complete word or make 5 mistakes

### Pontuation:

| Action | Points |
|---|---|
| Find correct word | + 50 points |
| Miss the correct word | - 30 points |
| Correct shots | - 2 points |
| Incorrect shots | - 3 points |

> This way, the player who needs less shots to find the correct word will have a higher score

- The ranking shows the name of the player that pointed higher, the one who beats the current highscore will overwrite the rank!
