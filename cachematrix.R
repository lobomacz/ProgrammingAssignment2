## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# This is my solution to the Assignment for
# inverse matrix caching. It applies the same principle
# as the example in the assignment instructions.
# only that this time, the function implements a matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse){
    m <<- inverse
  }
  getInverse <- function() m
  list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
}


## Write a short comment describing this function
# This function will compute the inverse of the matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getInverse()
    if(!is.null(m) & isTRUE(identical(solve(m),...))){
      message("getting cached inverse matrix")
      return(m)
    }
    m <- solve(...)
    x$setInverse(m)
    m
}
