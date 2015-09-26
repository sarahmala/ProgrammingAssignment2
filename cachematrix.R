## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


  makeCacheMatrix <- function(x = matrix()) {
    invmatrix <- NULL
    set <- function(y) {
      x <<- y
      invmatrix <<- NULL
    }
    get <- function() x
    setinverse <- function(solve) invmatrix <<- solve
    getinverse <- function() invmatrix
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
  }

  cacheSolve <- function(x, ...) {
    invmatrix <- x$getinverse()
    if(!is.null(invmatrix)) {
      message("getting cached data.")
      return(invmatrix)
    }
    data <- x$get()
    invmatrix <- solve(data)
    x$setinverse(invmatrix)
    invmatrix
  }
  
