####################################################################################################
#
# WHAT  This file defines a pair of functions that cache the inverse of a matrix.
#       Matrix inversion is usually a costly computation and there may be some
#       benefit to caching the inverse of a matrix rather than computing it repeatedly.
#
# HOW   To execute this xxxxxxxxxx TO BE DONE
#
# REFERENCES
# Assignment  https://class.coursera.org/rprog-031/human_grading/view/courses/975105/assessments/3/submissions
# GitHub repo https://github.com/rashidjeffrey/ProgrammingAssignment2
#
# WHEN      WHO     WHAT
# 20150820  Rashid  First draft. Defines the template as obtained from the assignment (see linked ref)
#                   Added annotations and made rudimentary changes to code, such as defining a matrix.
# 2015082x  Rashid  Finish coding. Write a test script. Upload... TO BE DONE
#
####################################################################################################


####################################################################################################
# WHAT    This function creates a special "matrix" object that can cache its inverse.
#
# PARAM   x (defaults to an empty matrix if argument value not specified)
#
# RETURN  A list of functions which expose the public operations on the matrix.
#         The functions define getter (accessor) and setter (mutator) operations.
# 
#         get the value of the matrix
#         set the value of the matrix
#         get the value of the inversed matrix
#         set the value of the inversed matrix
#
makeCacheMatrix <- function(x = matrix()) {
        # Define an empty object will be used to store an inversed matrix
        inversedMatrix <- NULL
  
        # Accessor to return the current state of the matrix 
        getMatrix <- function() x
        
        # Mutator to
        # 1. Set the matrix object to the value of the parameter argument value
        # 2. Reset the inverse matrix to an empty object (because y is a new matrix)
        setMatrix <- function(pMatrix) {
                # The <<- operator assign a value to an object in a different environment
                x <<- pMatrix
                inversedMatrix <<- NULL
        }

        # Accessor to return the current state of the inversed matrix 
        getInversedMatrix <- function() inversedMatrix

        # Mutator to set the inversed matrix object to the value of the parameter argument value
        setInversedMatrix <- function(pInversedMatrix) inversedMatrix <<- pInversedMatrix
        
        # Return the accessors and mutators in a list
        list(getMatrix = getMatrix, 
             setMatrix = setMatrix, 
             getInversedMatrix = getInversedMatrix, 
             setInversedMatrix = setInversedMatrix)
        
}
####################################################################################################


####################################################################################################
# WHAT  This function computes the inverse of the special "matrix" returned by `makeCacheMatrix` above. 
#       If the inverse has already been calculated (and the matrix has not changed), 
#       then `cacheSolve` should retrieve the inverse from the cache.
#
# PARAM x
#
# RETURN  TO BE DONE
#
cacheSolve <- function(x, ...) {
  
        # Return a matrix that is the inverse of 'x'
        # Computing the inverse of a square matrix can be done with the `solve` function in R. 
        # For example, if `X` is a square invertible matrix, then `solve(X)` returns its inverse.
        
        ### THIS IS THE TEMPLATE CODE OBTAINED FROM THE ASSIGNMENT README FILE ###
        ### MODIFY THIS ####
        m <- x$getmean()
        if(!is.null(m)) {
          message("getting cached data")
          return(m)
        }
        data <- x$get()
        m <- mean(data, ...)
        x$setmean(m)
        m        
        
        
        # Pseudo code follows

        
        # Get the inversed matrix
        inversedMatrix <- x$getInversedMatrix()
        
        # Test the inversed matrix to see if it is an undefined object
        # If defined then return the inversed matrix
        # else get the matrix, inverse it, then set it
        # return the inverse
        
        # have a nice cup of tea
        
}
####################################################################################################

