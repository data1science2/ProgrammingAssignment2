## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    invX <- NULL
    
    set <-function(y){
        x    <<- y
        invX <<- NULL
    }
    
    get <-function() x
    setinverse <-function(solve) invX <<-solve
    getinverse <-function() invX
    
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    invX<- x$getinverse()
    
    if(!is.null(invX)){
        message("getting cached data")
        return(invX)
    }
    
    data <- x$get()
    invX <- solve(data, ...)
    x$setinverse(invX)
    invX
}