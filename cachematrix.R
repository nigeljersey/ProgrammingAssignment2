## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
