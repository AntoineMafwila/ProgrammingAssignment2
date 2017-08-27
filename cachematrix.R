## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## For allowing the computer to retrieve the function from the workspace instead of calculating it repeatedly, we create a function "makeCacheMatrix" which 
## cache the inverse of matrix 

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y) {
        x <<- y
        inv <<- NULL
		}
				get <- function()x
				setinverse<-function(inverse) inv<<- inverse
				getinverse<-function() inv
				list(set=set, get=get,setinverse=setinverse,getinverse=getinverse)
				
}

## Write a short comment describing this function
## This function, after checking if the inverse is previously computed , compute the inverse and store the value in the cache using the  setinverse function
## If it is already computed, this function get the value using the get function. Finally it returns the value of the inverse of the matrix 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		inv <- x$getinverse()
		if(!is.null(inv)) {
		message("getting cached data.")
		return(inv)}
		data <- x$get()
		inv <- solve(data)
		x$setinverse(inv)
		 inv
}
