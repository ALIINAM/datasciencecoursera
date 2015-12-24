## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#set the value of the matrix
#get the value of the matrix 
#set the value of the inverse of the matrix 
#get the value of the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL;
    set <- function(y){
      x <<- y
      i <<- NULL
    }
    get <- function()x
    setinverse <- function(inv)i <<- inv
    getinverse <- function()i
    
    list(
      set = set,
      get = get,
      setinverse = setinverse,
      getinverse = getinverse
    )
}


## Write a short comment describing this function
#This function first checks if the same matrix has already been inverted or not. If yes then return the value from the  cache other wise 
#you need to computer it again

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinverse()
        if(!is.null(i)){
          message("Found Cache Data")
          return (i)
        }
        m <- x$get()
        i <- solve(m,...)
        x$setinverse(i)
        i
}
