source("cachematrix.R")

asd = matrix(c(1, 2, 3, 4, 3, 2, 5, 4, 6), 3, 3)
lol = makeCacheMatrix(asd)

lol$set(asd)
lol$get()

cacheSolve(lol)
cacheSolve(lol)
cacheSolve(lol)

# same matrix
asd = matrix(c(1, 2, 3, 4, 3, 2, 5, 4, 6), 3, 3)

lol$set(asd)
lol$get()

cacheSolve(lol)
cacheSolve(lol)
cacheSolve(lol)

# change element
asd = matrix(c(5, 2, 3, 4, 3, 2, 5, 4, 6), 3, 3)

lol$set(asd)
lol$get()

cacheSolve(lol)
cacheSolve(lol)
cacheSolve(lol)
