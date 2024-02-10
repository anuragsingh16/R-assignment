# Function to create a special "matrix" object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
  # Initialize inverse matrix cache
  cache <- NULL
  
  # Function to set the matrix
  set <- function(matrix) {
    x <<- matrix
    cache <<- NULL # Reset cache when matrix changes
  }
  
  # Function to get the matrix
  get <- function() {
    x
  }
  
  # Function to get the cached inverse of the matrix
  getInverse <- function() {
    cache
  }
  
  # Function to compute and cache the inverse of the matrix
  setInverse <- function(inverse) {
    cache <<- inverse
  }
  
  # Return a list of functions
  list(set = set,
       get = get,
       getInverse = getInverse,
       setInverse = setInverse)
}

# Function to compute the inverse of the special "matrix" object
cacheSolve <- function(x, ...) {
  # Retrieve cached inverse if available
  inverse <- x$getInverse()
  
  # If the inverse is already cached, return it
  if (!is.null(inverse)) {
    message("Getting cached inverse...")
    return(inverse)
  }
  
  # If the inverse is not cached, compute it and cache it
  matrix <- x$get()
  inverse <- solve(matrix, ...)
  x$setInverse(inverse)
  inverse
}
# Function to create a special "matrix" object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
  # Initialize inverse matrix cache
  cache <- NULL
  
  # Function to set the matrix
  set <- function(matrix) {
    x <<- matrix
    cache <<- NULL # Reset cache when matrix changes
  }
  
  # Function to get the matrix
  get <- function() {
    x
  }
  
  # Function to get the cached inverse of the matrix
  getInverse <- function() {
    cache
  }
  
  # Function to compute and cache the inverse of the matrix
  setInverse <- function(inverse) {
    cache <<- inverse
  }
  
  # Return a list of functions
  list(set = set,
       get = get,
       getInverse = getInverse,
       setInverse = setInverse)
}

# Function to compute the inverse of the special "matrix" object
cacheSolve <- function(x, ...) {
  # Retrieve cached inverse if available
  inverse <- x$getInverse()
  
  # If the inverse is already cached, return it
  if (!is.null(inverse)) {
    message("Getting cached inverse...")
    return(inverse)
  }
  
  # If the inverse is not cached, compute it and cache it
  matrix <- x$get()
  inverse <- solve(matrix, ...)
  x$setInverse(inverse)
  inverse
}
