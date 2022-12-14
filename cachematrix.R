## makeCacheMatrix creates a matrix then gets the values for it
## Then takes function and creates the inverse matrix and gets values


makeCacheMatrix <- function(x = matrix()) 
  
  {
  
  i <- NULL
  set <- function(y) 
    
    {
    
    x <<- y
    i <<- NULL
  
  }
  
  get <- function() x
  
  setinverse <- function(inverse) i <<- inverse
  
  getinverse <- function() i
  
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)

  }


## cacheSolve gets inverse data from matrix
## Result inverse x

cacheSolve <- function(x, ...) 
  
  {
  
  i <- x$getinverse()
  if (!is.null(i)) {
    message("data stored")
    return(i)
  
    }
  
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i

  }
