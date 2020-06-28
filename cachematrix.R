## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(a = matrix()) {
  inverse <- NULL
  set <- function(b){
    a <<- b
    inverse <<- NULL
  }
  get <- function() a
  setInverse <- function(solveMatrix) inverse <<- solveMatrix
  getInverse <- function() inverse
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

cacheSolve <- function(a, ...) {
  ## Return a matrix that is the inverse of 'x'
  inverse <- a$getInverse()
  if(!is.null(inverse)){
    message("getting cached data")
    return(inverse)
  }
  data <- a$get()
  inverse <- solve(data)
  a$setInverse(inverse)
  inverse      
}
