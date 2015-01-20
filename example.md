## Examples


To test the function here are some examples :

*Create a invertible matrix, compute its inverse and test it* 
``` r
 x <- c(1, 8, 69)
 y <- c(1, 75, 7)
 z <- c(45, 87, 125)
 m <- rbind(x, y,z)
 ms <- makeCacheMatrix(m)
 invm <- cacheSolve(ms)
 invm %*% m
 ```
*Demonstrate the cache function*
 ``` r
 
 x <- c(47895, 81452547, 10)
 y <- c(1447896, 5, 777)
 z <- c(45789, 87, 121545)
 m <- rbind(x, y,z)
 ms <- makeCacheMatrix(m)
 invm <- cacheSolve(ms)
 invm <- cacheSolve(ms)
