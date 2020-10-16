#*** Use a for loop and if-else statemetn to calculate the sum of wages for males and females in wages.csv

# load wages data
wages=read.table("wages.csv",header=TRUE,sep=",",stringsAsFactors=FALSE)

# create variables to store sums
femaleSum=0
maleSum=0

for(i in 1:nrow(wages)){
  if(wages$gender[i]=="female"){
    femaleSum=femaleSum+wages$wage[i]
  }else{
    maleSum=maleSum+wages$wage[i]
  }
}

femaleSum
maleSum

rowsum(wages$wage,wages$gender=="female")
rowsum(wages$wage,wages$gender=="male")

#*** Use a for loop to calculate the average sepal length for each species  
#    in the iris data set. Don't cheat and use the `mean()` function!
iris<-read.csv("C:/Users/ebrooks5/Downloads/iris.csv",header=TRUE,stringsAsFactors=FALSE)

speciesList<-unique(iris$Species)
obsCounts<-numeric(length(speciesList))
lengthSum<-numeric(length(speciesList))
for(i in 1:nrow(iris)){
  if(iris$Species[i]==speciesList[1]){
    obsCounts[1]<-obsCounts[1]+1
    lengthSum[1]<-lengthSum[1]+iris$Sepal.Length[i]
  }else if(iris$Species[i]==speciesList[2]){
    obsCounts[2]<-obsCounts[1]+1
    lengthSum[2]<-lengthSum[1]+iris$Sepal.Length[i]
  }else{
    obsCounts[3]<-obsCounts[1]+1
    lengthSum[3]<-lengthSum[1]+iris$Sepal.Length[i]
  }
}

sepalLengthmeans<-lengthSum/obsCounts
names(sepalLengthmeans)<-speciesList

#*** Use a for loop and if-else statement to find the minimum petal width 
#    of setosa iris in the iris data set. Don't cheat and use the `min()` 
#    function!
minPetalWidth<-1e6
for(i in 1:nrow(iris)){
  if(iris$Species[i]=="setosa"){
    if(iris$Petal.Width[i]<minPetalWidth){
      minPetalWidth<-iris$Petal.Width[i]
    }
  }
}

minPetalWidth