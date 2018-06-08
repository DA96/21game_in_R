# CARD GAME 21

# AUTHOR  :  DIVYA AGARWAL


DeckOfPlayingCards <- matrix(nrow=3,ncol=52)
YourTotalScore <- 0
CompTotalScore <- 0
CompTurn <- 0



INIT <- function(){

suit <- c("Clubs","Diamonds","Hearts","Spades")
rank <- c("Ace","2","3","4","5","6","7","8","9","10","Jack","Queen","King")
cardScore <- as.integer(c(11,2,3,4,5,6,7,8,9,10,10,10,10))

k<-1

for( i in 1:4)
{
  ind<-1
  for( j in k:(13+k-1))
  {  
     # 1st row represents rank
     DeckOfPlayingCards[1,j] <<- rank[ind]

     # 2nd row represents suit
     DeckOfPlayingCards[2,j] <<- suit[i]

     # 3rd row represents cardScore
     DeckOfPlayingCards[3,j] <<- cardScore[ind]
  
     ind<-ind+1
  }
  k<-j+1
}
YourTotalScore <<- 0
CompTotalScore <<- 0
}



SHUFFLE <- function(){

for(i in 1:51)
{
  randNo <- sample(i:52, 1)
  temp<- DeckOfPlayingCards[,i]
  DeckOfPlayingCards[,i] <<- DeckOfPlayingCards[,randNo]
  DeckOfPlayingCards[,randNo] <<- temp
}
topCardIndex <<- 1
}



deal <- function(topCardIndex){  
  topCard <<- DeckOfPlayingCards[,topCardIndex]
  topCardIndex <<- topCardIndex + 1
  topCard
}



HitOrStay <- function(){
 
 HorS <- readline(prompt="HIT or STAY?  ")
 
 if(HorS=="HIT"){

 flag <<- 1
 return(flag)

 } else if(HorS=="STAY"){

 flag <<- 0
 return(flag)

 } else {
 print(" ERROR! Unrecognizable input")
 HitOrStay()
 }
}



hit <- function(){

 topCard <<- deal(topCardIndex)
   if(topCard[1]=="Ace"){
     if((YourTotalScore + as.integer(topCard[3])) > 21){
       YourTotalScore <<- YourTotalScore + 1
     } else {
     YourTotalScore <<- YourTotalScore + as.integer(topCard[3])
     }
   } else {
   YourTotalScore <<- YourTotalScore + as.integer(topCard[3])
   }
  cat(topCard[1]," of ",topCard[2],"	",YourTotalScore,"\n")

  if(YourTotalScore <= 21 ){
    HorS <- HitOrStay()
    if(HorS==1){
    hit()
    } else {
    CompTurn <<- 1
    return()
    } 
  } else {
  print("YOU LOSE! ")
  CompTurn <<- 0
  }
}



compHit <- function(){

 topCard <<- deal(topCardIndex)
   if(topCard[1]=="Ace"){
     if((CompTotalScore + as.integer(topCard[3])) > 21){
       CompTotalScore <<- CompTotalScore + 1
     } else {
     CompTotalScore <<- CompTotalScore + as.integer(topCard[3])
     }
   } else {
   CompTotalScore <<- CompTotalScore + as.integer(topCard[3])
   }
  cat(topCard[1]," of ",topCard[2],"	",CompTotalScore,"\n")
  if(CompTotalScore < 17){
   compHit()
  }
}



stay <- function(){
 
 print("COMPUTER'S TURN")
 SHUFFLE()
 
for(i in 1:2)
{
  topCard <<- deal(topCardIndex)
  CompTotalScore <<- CompTotalScore + as.integer(topCard[3])
  cat(topCard[1]," of ",topCard[2],"	",CompTotalScore,"\n")
}

 if(CompTotalScore < 17){
   compHit()
 } else {
   return()
 }
  
} 


 
playAgain <- function(){
 YorN <- readline(prompt="PLAY AGAIN? (Y/N) ")
 if((YorN == "Y")||(YorN == "y")){
   TwentyOne()
 } else if((YorN =="N")||(YorN == "n")){
   print("THANK YOU FOR PLAYING!!! ")
 } else {
   print(" ERROR! Unrecognizable input")
   playAgain()
 }
}
   

 
 
TwentyOne <- function(){ 

print("LET'S PLAY 21!")
INIT()
print("SHUFFLING CARDS.. \n")
SHUFFLE()
print("YOUR TURN")

for(i in 1:2)
{
  topCard <<- deal(topCardIndex)
  YourTotalScore <<- YourTotalScore + as.integer(topCard[3])
  cat(topCard[1]," of ",topCard[2],"	",YourTotalScore,"\n")
}

flag <- HitOrStay()

 #if it's a HIT
 if(flag==1){
  hit()
 } else {
 #if it's a STAY 
   CompTurn <<- 1
 }

 if(CompTurn==1){ 
   stay()
   cat("YOUR SCRORE: ",YourTotalScore,"\n")
   cat("COMPUTER'S SCRORE: ",CompTotalScore,"\n")
   if(CompTotalScore > 21){
    print("YOU WIN!")
   } else if(YourTotalScore > CompTotalScore){
      print("YOU WIN!")
   } else {
      print("YOU LOSE!")
   }
 }
  
 playAgain() 
}


#TwentyOne()



