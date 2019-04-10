# TIC-TAC-TOE
Practicing Ruby (Object Oriented Programming) by Building TIC TAC TOE GAME
Inspired by explanations from https://www.youtube.com/watch?v=mMO-spo20jU

# DESCRIPTION

There're 2 main directories hosting the game files
- **lib**/ : for the game logic
- **bin**/ : with the executable file

The " **lib**/ " is made of the following files :
1. **gameclass.rb** : This file contain a **Game** class. Here the games logic is built in. It has methods to 
    - showArray : *show the array state anytime a player plays*
    - numberAlreadyChosen? : *check if an array square is already selected when a player choses a square*
    - correct_number_warning : *a warning message when a player plays a non existent square number (there're 9 squares in this game to choose from)*
    - alread_selected_warning : *a warning message, directed to a player who picks a square already selected*
    - fillArray : *a method to fill the array's box when a user plays (selects a box)*
    - initialize : *When initialised, an empty array with 9 boxes is created, from which the players will be playing on*
2. **player.rb** : This file contains a **Player** class,with the following methods
    - play : *this method does multiple calls to the **Game** class. Basically, it reads the user's input after prompting them to select their desired square; after which it calls the method below :*
    - checkWInner? *checks wether the user has won the game. It is called everytime a player plays*

3. **winnermodule.rb** : This file is a small module having one method that returns the winning formula (an array containing the winning combinations) for the game. This module is used by the **Game** class, when checking if a user is a winner

The " **bin**/ " folder contains one file :

1. **game.rb** : This is the main game file (the executable), from which the game is launched. It loads all the files in the *lib/* folder.

It contains the welcome screen and collects the name of the two players when the game loads.
