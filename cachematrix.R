## Program generates inverse of any matrix
## chacheSolve generates inverse matrix and MakeCahe function stores values in cache for reuse
## Cachematrix acts like a cnstuctor

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
    set <- function(y) {
       
        x <<- y
        m <<- NULL
    }
    get <- function() {
                       
                       x
                        }
    setsolve <- function(solve) m <<- solve
    getsolve <- function() m
    list(set = set, get = get,
         setsolve = setsolve,
         getsolve = getsolve)

}


## This function is to inverse a matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getsolve()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
        
    }
    print("c")
    data <- x$get()
    print(data)
    m <- solve(data, ...)
    x$setsolve(m)
    m
}
