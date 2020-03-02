## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        
        get <- function() x
        setinverse <- function(inverse) m <<- inverse  ####   ##  也可以这么写，就是关于谁的函数
        getinverse <- function() m #        这里getmean的值就是m，把他做成了个函数而已
        list(set = set, get = get,      ###### 前面是函数名 后面是function()  getname=get()
             setinverse = setinverse,
             getinverse= getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached inverse")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)      #####  这一步就是存储了吧 这个m会赋值到上面函数的mean再到m，然后到父环境的m
        m## Return a matrix that is the inverse of 'x'
}
