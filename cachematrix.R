## makeCacheMatrix puts the matrix in a list
## then adds a second value in the list as a 
## placeholder for the inverse


makeCacheMatrix <- function(x = matrix()) {
  SpecialMO <- list(x, NULL)
  return(SpecialMO)
  
}

## cacheSolve looks to see if x[[2]] is NULL and if so, 
## uses the 'solve' function to calcuate the inverse of x[[1]],
## store it in x[[2]] (replacing the NULL), and then returns x[[2]]

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  # x[[1]] is the matrix
  # x[[2]] is either NULL or the inverted x[[1]]
  
  if(is.null(x[[2]])) {
    x[[2]] <- solve(x[[1]])
    
  }  
  
  return(x[[2]])
}


