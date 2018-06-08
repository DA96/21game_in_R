# 21game_in_R

## Description
A simple card game of 21. In this game, the single player has to try to come as close to a score of 21 without going over and beat the computer's score.

## Rules of the Game
Each card has a point value based on its rank (the suit is ignored in this game). The cards with ranks 2 through 10 have point values of 2 through 10 respectively. The "face" cards (Jack, Queen, King) have a point value of 10 each. The Ace is considered as 11 points, unless that puts the player over a total of 21 points, in which case it reverts to 1 point instead. 
In each game, the deck of cards is shuffled, and the user starts with the first two cards of the deck. The user may pick the next card of the deck by inputting "HIT" or the user may stop at this point by inputting "STAY". The user can pick as many cards as he or she wants in order to try to come up with a score as close to 21 without going over. If the user goes over 21 points, the user automatically loses and the computer wins. Otherwise, if the user stops with a total score less than or equal to 21, then the computer plays. The computer starts with the next two cards of the deck. The computer automatically "HITS" until its score is at least 17. If the computer goes over 21 (but the user did not), then the user wins automatically. Otherwise, the winner is the player with the higher score. A tie (same total score) is won by the computer.
