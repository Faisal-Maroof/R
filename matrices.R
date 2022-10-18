
thismatrix <- matrix(c(1,2,3,4,5,6), nrow = 3, ncol = 2)
print(thismatrix)

thismatrix <- matrix(c("lamborgini", "Ducati", "Ferrari", "Audi"), nrow = 2, ncol = 2)
print(thismatrix)

thismatrix <- matrix(c("lamborgini", "Ducati", "Ferrari", "Audi"), nrow = 2, ncol = 2)
print(thismatrix[1, 2])

thismatrix <- matrix(c("lamborgini", "Ducati", "Ferrari", "Audi"), nrow = 2, ncol = 2)
print(thismatrix[2,])

thismatrix <- matrix(c("lamborgini", "Ducati", "Ferrari", "Audi"), nrow = 2, ncol = 2)
print(thismatrix[,2])

thismatrix <- matrix(c("lamborgini", "Ducati", "Ferrari", "Audi","Bugati", "Maserati", "Honda", "Suzuki", "Isuzu"), nrow = 3, ncol = 3)
print(thismatrix[c(1,2),])

thismatrix <- matrix(c("lamborgini", "Ducati", "Ferrari", "Audi","Bugati", "Maserati", "Honda", "Suzuki", "Isuzu"), nrow = 3, ncol = 3)
thismatrix[, c(1,2)]


thismatrix <- matrix(c("lamborgini", "Ducati", "Ferrari", "Audi","Bugati", "Maserati", "Honda", "Suzuki", "Isuzu"), nrow = 3, ncol = 3)
newmatrix <- cbind(thismatrix, c("TVS", "HERO", "TATA"))
print(newmatrix)

thismatrix <- matrix(c("lamborgini", "Ducati", "Ferrari", "Audi","Bugati", "Maserati", "Honda", "Suzuki", "Isuzu"), nrow = 3, ncol = 3)
newmatrix <- rbind(thismatrix, c("TVS", "HERO", "TATA"))
print(newmatrix)

thismatrix <- matrix(c("lamborgini", "Ducati", "Ferrari", "Audi","Bugati", "Maserati", "Honda", "Suzuki", "Isuzu"), nrow = 3, ncol = 3)
thismatrix <- thismatrix[-c(1), -c(1)]
print(thismatrix)

thismatrix <- matrix(c("lamborgini", "Ducati", "Ferrari", "Audi"), nrow = 2, ncol = 2)
print("Ducati" %in% thismatrix)

thismatrix <- matrix(c("lamborgini", "Ducati", "Ferrari", "Audi"), nrow = 2, ncol = 2)
print(dim(thismatrix))

thismatrix <- matrix(c("lamborgini", "Ducati", "Ferrari", "Audi"), nrow = 2, ncol = 2)
print(length(thismatrix))

thismatrix <- matrix(c("lamborgini", "Ducati", "Ferrari", "Audi"), nrow = 2, ncol = 2)

for (rows in 1:nrow(thismatrix)) {
  for (columns in 1:ncol(thismatrix)) {
    print(thismatrix[rows, columns])
  }
}
