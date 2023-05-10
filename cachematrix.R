## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function bla bla

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL ## set the value to nul
    set <- function(y) {
      x <<- y
      m <<- NULL
    }
    get <- function() x ## get the value of the matrix
    setinverse <- function(solve) m <<- solve ## set the value of the inverse
    getinverse <- function() m ## get the value of the inverse
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    m <- x$getinverse()
    if(!is.null(m)) {
      message("getting cached data") ## checks if value of vector has been calculated
      return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setinverse(m) ## sets inverse
    m
}

