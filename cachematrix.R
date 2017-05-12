## Put comments here that give an overall description of what your
## functions do

## Two functions for creating a special matrix and 
## calculate or retrieve the inverse of the matrix.

## Write a short comment describing this function

## makeVector function used as starting point.
## mi for matrix-inverted.
makeCacheMatrix <- function(x = matrix()) {
  mi <- NULL
  set <- function(y){
      x <<- y
      mi <<- NULL
  }
  get <- function() x
  setinv <- function(minv) mi <<- minv
  getinv <- function() mi
  list(set = set, get=get, setinv = setinv, getinv=getinv)
}


## Write a short comment describing this function

## cachemean function used as starting point.
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  mi <- x$getinv()
  if(!is.null(mi)){
      message("getting the cached data")
      return(mi)
  }
  data <- x$get()
  mi <- solve(data)
  x$setinv(mi)
  mi
}
