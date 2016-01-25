## Function 1


makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function (newElem){
                x <<- newElem
                m <<- NULL
        }
        get <- function () x
        setsolve <- function (solve) m <<-solve
        getsolve <- function () m
        list (set = set, get = get,
              setsolve = setsolve,
              getsolve = getsolve)
}


## matrix inversion

cacheSolve <- function(x, ...) {
        m <- x$getsolve ()
        if(!is.null (m)){
                message ("getting cached data")
                return (m)
                
        }
        data <- x$get ()
        m <- solve (data,...)
        x$setsolve (m)
        m
}