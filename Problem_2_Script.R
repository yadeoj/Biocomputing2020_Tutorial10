#Problem 2 of Exercise 8 for Biocomputing
#By: Joseph Day

#Generate a random number between 1 and 100 that needs to be guessed

number <- sample(1:100, size = 1)

#Creating the guess variable, giving an initial prompt, and then starting a loop!

guess <- 0

print("I'm thinking of a number between 1 and 100")

for(x in 1:10){
  
  #Asking for an initial guess
  
  guess <- readline(prompt = "Guess: ")
  
  guess <- as.numeric(guess)
  
  if (guess == number){
    
    print("Correct! Nice job.")
    
    break
    
  }
  else if (guess > number){
    print("Too High")
  }
  else {
    print("Too Low")
  }
  
  if(x == 10){
    print("And you're out of guesses! The number was actually: ")
    print(number)
  }
}
