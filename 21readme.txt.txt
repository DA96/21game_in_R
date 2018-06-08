
DeckOfPlayingCards :  matrix of dimension 3 * 52

                      row1 represents rank of Playing Card
                      row2 represents suit of Playing Card
                      row3 represents card score of Playing Card

YourTotalScore : represents score of user in game

CompTotalScore : represents score of computer in game

CompTurn value specifies whether computer should take turn

INIT function initializes DeckofPlayingCards with rank, suit and card score of each card

suit : vector contains suit
rank : vector contains rank 
cardScore : vector contains card score 

topCardIndex represents index of top card in deck

topCard represents top card in deck


SHUFFLE function shuffles the playing cards in DeckOfPlayingCards and sets topCardIndex to top card in deck


deal function returns top card and sets the topCardIndex to next card in deck


HitOrStay function takes user input whether HIT or STAY or unrecognizable input if none of them

hit function deals with the top card and add its score to the total score of user and sees if the user wants to HIT or STAY

compHit function speciifies that computer has HIT and adds score of computer and sees whether the computer wants to HIT or STAY

stay function indicates the user chose to stay and now it's computer's turn to play

playAgain function asks user if user wants to play again 

TwentyOne function is the main function which intializes the deck, shuffles the deck, and deals with first 2 cards of user, displaying the score

