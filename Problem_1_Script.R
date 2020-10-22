#Problem 1 of Exercise 8 for Biocomputing
#By: Joseph Day

#First, import the data wherever it is on your computer

setwd("C:/Users/jday7/Onedrive/Desktop/Biocomputing2020_Tutorial10")

game_info <- read.csv("UWvMSU_1-22-13.txt", sep = "\t", header = TRUE)

#Generating data frames for Wisconcin and Michigan Scores

wisc_scores = game_info[game_info$team == "UW",]

msu_scores = game_info[game_info$team == "MSU",]

#Generating Vectors for cumulative scores for each team

wisc_cum_scores <- numeric(length = nrow(wisc_scores))

for(x in 1:nrow(wisc_scores)) {
  
  wisc_cum_scores[x] = sum(wisc_scores$score[1:x])
}

msu_cum_scores <- numeric(length = nrow(msu_scores))

for(x in 1:nrow(msu_scores)) {
  
  msu_cum_scores[x] = sum(msu_scores$score[1:x])
  
}

#Plotting scores vs their time for Wisconsin

plot(wisc_scores$time, wisc_cum_scores, type = 'l', xlab = "time", ylab = "Score", main = "Cumulative Score vs Time", col = 'red')

#Adding Michigan and a legend/colors to the graph

lines(msu_scores$time, msu_cum_scores, col = 'green')

legend("bottomright",  c("Wisconcin" , "Michigan State"), fill=c("red","green"))


                
    
    

  
  

