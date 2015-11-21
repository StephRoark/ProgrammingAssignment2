## A pair of functions that cache the inverse of a matrix

## Function to look for matrix and and cache the inverse of a given matrix

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() { 
                x
        }
        setmatrix <- function(solve) {
                m <<- solve
        }
        getmatrix <- function() {
                m
        }
        list(set = set, get = get,
             setmatrix = setmatrix,
             getmatrix = getmatrix)

}


## Function to check for an inverse matrix and compute the inverse of given matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getmatrix()
        if(!is.null(m)) {
                message("getting cached matrix")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setmatrix(m)
        m
}
