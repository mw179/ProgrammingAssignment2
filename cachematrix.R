makeCacheMatrix <- function( x = matrix() ) {

	#This function creates a special "matrix" object that can cache its inverse.

	#calcuate and store the inverse of the given matrix
	inverse <- solve(x)

} #end function

# makeCacheMatrix(x) 


################################################################################


cacheSolve <- function( x, ... ) {

	#This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
      #If the inverse has already been calculated (and the matrix has not changed),... 
      #...then cacheSolve should retrieve the inverse from the cache.

	#check to see if inverse already exists
	if ( exists("inverse") ) {
		
		#recall inverse variable
		inverse

	} #end if

	#check to see if inverse matrix has not been calculated
	if ( !exists("inverse") ) { 

		#call makeCacheMatrix funtion to find inverse
		makeCacheMatrix(x)

	} #end if

	#return matrix inverse
	inverse

} #end function

# cacheSolve(x)
