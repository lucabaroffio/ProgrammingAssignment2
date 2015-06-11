## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

matequal <- function(x, y)
  is.matrix(x) && is.matrix(y) && dim(x) == dim(y) && all(x == y)

makeCacheMatrix <- function(x = matrix()) {
  x.inv <- NULL
  set <- function(y) {
    if (!(matequal(x, y))){
      x <<- y
      x.inv <<- NULL
    }
  }
  get <- function() x
  setInv <- function(inv) x.inv <<- inv
  getInv <- function() x.inv
  list(set = set, get = get,
       setInv = setInv,
       getInv = getInv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  x.inv <- x$getInv()
  if(!is.null(x.inv)) {
    message("getting cached data")
    return(x.inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setInv(inv)
  inv
}
