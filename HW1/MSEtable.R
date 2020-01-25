#Separate files according to gaussian, t1, and t5

files_gaussian <- c("n_100_gaussian.txt",  "n_200_gaussian.txt", "n_300_gaussian.txt", "n_400_gaussian.txt", "n_500_gaussian.txt")

files_t1 <- c("n_100_t1.txt",  "n_200_t1.txt", "n_300_t1.txt", "n_400_t1.txt",  "n_500_t1.txt")

files_t5 <- c("n_100_t5.txt",  "n_200_t5.txt", "n_300_t5.txt", "n_400_t5.txt", "n_500_t5.txt")

#Create variables for data frame
n <- c(100,100,200,200,300,400)
Method <- c('PrimeAvg', 'SampAvg')
Gaussian <- c(files_gaussian)
t1 <- c(files_t1)
t5 <- c(files_t5)

# Join the variables to create a data frame
df <- data.frame(n,Method,Gaussian,t1,t5)

#Print structure
str(df)

