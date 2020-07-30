<h1 align="center"> TIC-TAC-TOE GAME </h1>
Practicing Ruby (Object Oriented Programming) by Building TIC TAC TOE GAME.

Inspired by explanations from https://www.youtube.com/watch?v=mMO-spo20jU

<p>
            Developed by <br />
            @shloch and @raphael_noriode  <br />
            <a href="https://twitter.com/shloch" target="_blank">
                <img alt="Twitter: @shloch" src="https://img.shields.io/twitter/follow/shloch.svg?style=social" />
            </a> <br/>
             <a href="https://twitter.com/raphael_noriode" target="_blank">
                <img alt="Twitter: @raphael_noriode"
                    src="https://img.shields.io/twitter/follow/raphael_noriode.svg?style=social" />
            </a>

            

           
</p>



## Launching game 
open terminal and type the following
- `cd bin/`
- `ruby launchgame.rb`

![alt text](https://github.com/shloch/TIC-TAC-TOE/blob/master/tic.gif)


## DESCRIPTION

There're 2 main directories hosting the game files
- **lib**/ : for the game logic
- **bin**/ : with the executable file

The " **lib**/ " is made of the following files :
1. **board.rb** : This file contain a **Game** class. Here the games logic is built in. It has methods to 
    - initialize : *When initialised, an empty array with 9 boxes is created, from which the players will be playing on*
    - showArray : *show the array state anytime a player plays*
    - numberAlreadyChosen? : *check if an array square is already selected when a player choses a square*
    - correct_number_warning : *a warning message when a player plays a non existent square number (there're 9 squares in this game to choose from)*
    - numberBetween_1_9? : checks if grid number chosen by PLayer is between 1 and 9
    - fillArray : *a method to fill the array's box when a user plays (selects a box)*
    - checkWInner? : *checks wether the user has won the game. It is called everytime a player plays*
    - check_player_combination: this function is used by *checkWInner?* to check whether all positions played by Player is a winner combination and returns a booleen (true/false)
   

2. **messages.rb** : This file contains a **GameMessage** class,with the following methods
    - welcome : *Welcome Message*
    - correct_number_warning : *a warning message if Player enters value different from interval 1-9*
    - alread_selected_warning : *a warning message, directed to a player who picks a square already selected*
    - announce_winner : *announces Winner. Takes optional player object as parameter. If no parameter is entered, then it's draw game*
    - game_over : *announces end of game (animative)*

3. **player.rb** : This file contains a **Player** class,with the following methods
    - play : *this method does multiple calls to the **Game** class. Basically, it reads the user's input after prompting them to select their desired square; after which it calls the method below :*
    - user_input : *collects user input (when he plays) and returns input*
    - update_play_record : *updates an array containing all the positions a player selected*
    - select_box : *makes sure the user selects correct box everytime and returns that box (makes use of "user_imput" method)*


The " **bin**/ " folder contains one file :

1. **launchgame.rb** : This is the main game file (the executable), from which the game is launched. It loads all the files in the *lib/* folder. 


## Contributors

### 👤 **SHEY Louis CHIA**

- Github: [shloch](https://github.com/shloch)
- Twitter: [@shloch](https://twitter.com/shloch)
- Linkedin: [/in/shey-louis-chia](https://www.linkedin.com/in/shey-louis-chia)
- Email: shloch2007@yahoo.fr

### 👤 **Raphael Noriode**
- Github: _https://github.com/Oghenebrume50__
- Twitter: https://mobile.twitter.com/raphael_noriode

## Acknowledgements
- https://www.ruby-lang.org/en/
- https://www.youtube.com/watch?v=mMO-spo20jU

