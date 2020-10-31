## Put comments here that give an overall description of what your functions do

## Caching Inverse of a Matrix

makeCacheMatrix <- function(x = matrix()) {
  x1 <- NULL
  set <- function(y) {
    x <- y
    x1 <- NULL
  }
  get <- function() x
  setinverse <- function(inverse) x1 <- inverse
  getinverse <- function() x1
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Solves a Mtrix to find inverse

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
  x1 <= x$getinverse()
  if(!is.null(x1)) {
    message("getting cached data")
    return(x1)
  }
  mat <- x$get()
  x1 <- solve(mat, ...)
  x$setinverse(invrs)
  x1
}
