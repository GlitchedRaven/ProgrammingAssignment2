To test the function here are some examples :

1.


> x <- c(1, 8, 69)
> y <- c(1, 75, 7)
> z <- c(45, 87, 125)
> m <- rbind(x, y,z)
> ms <- makeCacheMatrix(m)
> invm <- cacheSolve(ms)
> invm %*% m
             