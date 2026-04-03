# motus
Just for fun : a little Motus game  in one line of JS, to copy/paste in the Chrome console.


## Quick start
Clone the repository, tap the command `make run` and open a Chrome tab to localhost:4242.
Then follow the instructions.


## How to Play (without cloning)
- Open the js file en copy the entire line of code.
- Open a console in any Chrome tab, paste the line and execute it.
- Then start a game by calling `motus.play();`

### Dialogs
If you just run the program like this, a prompt will ask the game master to enter a word.
Then, next prompt will ask to the player to enter a guess, and he will have 5 try to find the secret word. You quit the game if you abort in the dialog.

### Clue logs
Each time the player use a try, the console will log his guess word and color each letter.
- if the letter is not in the secret word, it will be in blue
- if the letter is in, but not at the good position, yellow
- finnaly if the letter is in the word and at the right place, red

### End of the game
If the player found the secret word using maximum 5 guesses, the game log "YOU WIN". At the contrary, it will log "YOU LOSE" and reveal the secret.

## Param the run

When calling the `run()` method of `motus`, you can directly write the secret word as first param, and choose the max try allowed for guessing.

```
motus.run('lotus', 8);
```