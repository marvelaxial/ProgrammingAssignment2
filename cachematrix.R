## Put comments here that give an overall description of what your
## functions do
##This ffuncton creates a matrix where the inverse matrix can be calculated

## Write a short comment describing this function
##first we request the arguments that the function needs, then create a "null" matrix, and call a function where we calculate the inverse of that matrix
##with get and set we solve the matrix that we get, and save the result in our environment

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
  x<<-y
  m<<-NULL
}
get<-function() x
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m
list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)

}


## Write a short comment describing this function
##First we need the arguments of the function, the if we have a null variable, we have a message "getting cached data", and return m,
##Thenn when we have a matrix, we solve that matrix and return the inversse

cacheSolve <- function(x, ...) {
    m<-x$getmatrix()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
    matrix<-x$get()
    m<-solve(matrix, ...)
    x$setmatrix(m)
    m
        ## Return a matrix that is the inverse of 'x'
}
