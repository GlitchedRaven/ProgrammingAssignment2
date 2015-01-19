## Remember, the matrix multiplication operator is %*% and not *
## These functions allow the computation and caching of inverse matrices
##

## makeCacheMatrix creates a special matrix which is capable of caching its inverse
## It contains a function which :
## 1. set the value of the matrix
## 2. get the value of the matrix
## 3. set the value of the inverse (with the solve() function)
## 4. get the value of the inverse 
##(Freely inspired by the makeVector function in Coursera)

makeCacheMatrix <- function(x = matrix()) {

  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  set_inverse <- function(solve) inv <<- solve
  get_inverse <- function() inv
  list(set = set, get = get,
       set_inverse = set_inverse,
       get_inverse = get_inverse)

}


##cacheSolve computes the inverse of a special matrice created by MakeCacheMatrix
##The function also caches the results. As such, if the function is called with
##the same argument(s), it won't compute the inverse matrice but return the cached 
##value.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$get_inverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$set_inverse(inv)
  inv
}
