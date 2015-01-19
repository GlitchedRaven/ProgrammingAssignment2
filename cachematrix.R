## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix creates a special matrix which is capable of caching its inverse
## It contains a function which :
## 1. set the value of the matrix
## 2. get the value of the matrix
## 3. set the value of the inverse (with the solve() function)
## 4. get the value of the inverse 
##

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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
