## These functions calculate inverse of a matrix.
## First function computes the matrix and second matrix sorts and prints the answer.

## This function catches the matrix and computes its inverse.

makeCacheMatrix <- function(x = matrix()) {

        i <- NULL
        set <- function(y){
                
        x <<- y
        i <<- NULL
        
        }
        get <- function() x
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
        list (set = set,
              get = get,
              setinverse = setinverse,
              getinverse = getinverse)
        
}


## This function returns the inverse from computation in makeCacheMatrix function
cacheSolve <- function(x, ...) {
        i <- x$getinverse()
        if( !is.null(i) ) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i   ## Return a matrix that is the inverse of 'x'
}
