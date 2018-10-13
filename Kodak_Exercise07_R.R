####Exercise 7 
iris = read.csv("iris.csv")

head(iris)

#1)Write a function that returns the odd (1, 3, 5, etc.) rows of any 
#dataframe passed as an argument.
#Find code that subset the odd rows of iris: need a vector of all odd rows 

iris$odd = seq_len(nrow(iris)) %% 2 #this was too define the odd values 
#so that it can be used in the brackets to subset th eodd columns since there
#is no syntax for odd columns 
iris[iris$odd == 1, ]
odddata= data.frame(x=iris[odd=1,])
odddata
irisOdd = iris[iris$Sepal.Length==]

iris %% 2 == 1

oddRows = function( )
  
### 2 
 # Repeat a subset of last week's exercise, but write functions to accomplish 
#these tasks.
#A) Return the number of observations for a given species included 
#in the data set
iris$Species
setosa.count = (iris[iris$Species=="setosa",])
nrow(setosa.count)
virginica.count = (iris[iris$Species=="virginica",])
nrow(virginica.count)
versicolor.count = (iris[iris$Species=="versicolor",])
nrow(versicolor.count)

numberSpecies = function(species){
  species.select= (iris[iris$Species== species,])
  species.count = nrow(species.select)
  return(species.count)
}

species = "setosa"
numberSpecies(species = "setosa")
  
#B Return a dataframe for flowers with Sepal.Width greater than a value 
#specified by the function user
SepalwidthGreaterthan = function(greaterthan) {
  Sepal.width.greaterthan = iris[iris$Sepal.Width >greaterthan,]
  return(Sepal.width.greaterthan)
}

SepalwidthGreaterthan(3.5)


#c Write the data for a given species to a comma-delimited file with the given 
#species name as the file name. Hint: look at paste() to add the .csv extension
#to your file in the function.

writeSpecies.data = function(species) {
  Species.data = iris[iris$Species=="species",]
  Species.data.csv = write.csv(x=Species.data, file=paste(species, ".csv"))
  return(Species.data.csv)
}

writeSpecies.data("setosa")
read.csv("setosa.csv")

