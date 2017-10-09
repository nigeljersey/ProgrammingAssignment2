## Put comments here that give an overall description of what your
## functions do

## Creates a special matrix that acts as a "wrapper" around the matrix data and inverse.

## Nigel updating the fork

makeCacheMatrix <- function(x = matrix()) {
  myInv <- NULL
  set <- function(y) {
    x <<- y
    myInv <<- NULL
  }
  get <- function() x
  setInv <- function(newInverse) myInv <<- newInverse
  getInv <- function() myInv
  #no clue what this next line means
  list(set = set, get = get,setInv = setInv, getInv = getInv)
}


## Calculates the inverse of a Matrix 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  myInv <- x$getInv()
  if (!is.null(myInv)) {
    message("getting cached data")
    return(myInv)
  }
  data <- x$get()
  myInv <- solve(data, ...)
  x$setInv(myInv)
  myInv
}
