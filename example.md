## Examples


To test the function here are some examples :

1. Create a invertible matrix, compute its inverse and test it 


> x <- c(1, 8, 69)
> y <- c(1, 75, 7)
> z <- c(45, 87, 125)
> m <- rbind(x, y,z)
> ms <- makeCacheMatrix(m)
> invm <- cacheSolve(ms)
> invm %*% m
             
2. Demonstrate the cache function

> x <- c(47895, 81452547, 10)\n
> y <- c(1447896, 5, 777)\n
> z <- c(45789, 87, 121545)
> m <- rbind(x, y,z)
> ms <- makeCacheMatrix(m)
> invm <- cacheSolve(ms)
> invm <- cacheSolve(ms)
