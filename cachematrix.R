## Put comments here that give an overall description of what your
## functions do
## 1.0 - This function wil cache the inverse of a matrix. The goal is 
## to speed up this process with caching.

## Write a short comment describing this function
## Write the same format as the example code

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        ##changing from template from mean to inverse
        setinverse <- function(inverse) m <<- inverse
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse, getinverse = getinverse)
        ##Changed to the values for inverse
        
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ## also here using the example as the template
        m <- x$getinverse()
        ## see what is in the cache
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        ##using the solve function instead of mean from template
        m <- solve(data, ...)
        x$setinverse(m)
        m
}
