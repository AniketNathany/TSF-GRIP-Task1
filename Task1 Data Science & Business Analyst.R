 #Task1
#Prediction using Supervised ML
#First we will load our data into our coding environment
data <- read.csv("student_scores.csv", header = TRUE)
#We will plot our data and and will check the fitness of model by fitting a line
plot(data)
x <- data$Hours
y <- data$Scores
a <- lm(y~x)
abline(a)
#We see a positive relationship between the scores and study hours of the student
coef <- a$coefficients
coef      #This will give us the respective coefficients
alpha <- coef[1]
beta <- coef[2]
alpha     #The intercept coefficient = 2.484
beta      #The slope coefficient = 9.776

#Now we will predict the score of the student who studies 9.25 hrs/day
predicted <- alpha + 9.25*beta
predicted   #92.90985






