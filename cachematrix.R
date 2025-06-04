
## The task involves creating two functions in R: makeCacheMatrix and cacheSolve. 
## makeCacheMatrix generates a special list object that can store a matrix and cache its inverse. 



makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
      x <<- y
      i <<- NULL
    }
    get <- function() x
    setInv <- function(inverse) i <<- inverse
    getInv <- function() i
    list(set = set, get = get,
         setInv = setInv,
         getInv = getInv)
}


## cacheSolve computes the inverse of this matrix only if it hasn't been cached yet—otherwise, it retrieves the stored inverse. 
## This approach saves computation time when the inverse is needed multiple times. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    i <- x$getInv()
    if(!is.null(i)) {
      message("getting cached data")
      return(i)
    }
    data <- x$get()
    i <- solve(data, ...)
    x$setInv(s)
    i
}
