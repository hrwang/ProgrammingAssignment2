## The following two functions will calculate the inverse of a matrix from cache.

## The "makeCacheMatrix" function caches the inverse matrix.

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function (y) {
        x <<- y
        inv <<- NULL
    }
    get <- function () x
    setInverse <- function (inverse) inv <<- inverse
    getInverse <- function () inv
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
        
}

## The "cacheSolve" function solve the inverse of a matrix by retriveing from cache. If the inverse does not exist in the cache, then it will calculate the inverse and update the cache.

cacheSolve <- function(x, ...) {
    inv <- x$getInverse()
    if (!is.null(m)) {
        message ("Getting cached data")
        return (m)
    }
    data <- x.get()
    inv <- solve (data, ...)
    x$setInverse (inv)
    inv
}        

            
