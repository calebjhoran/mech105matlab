# mech105matlab
Over the course of this semester I was instructed to code several MATLAB funcitons to complete different tasks. This repository is a compilation of those MATLAB functions I created during MECH 105 (w/ Dr. B)

## Function Definitions
Listed are the MATLAB m.file function-names, as well as their inputs outputs and purpose.

### Simpson.m
This is a function for integrating experimental data using Simpson’s 1/3 rule. The function checks if there are an odd number of intervals, if there are, the trapezoidal rule is used for the last interval.

Inputs:x and y vectors

Outputs: estimated integral I

### days.m
This Function, days(mo, day, leap), calculates the elapsed days in a year when given the month (1-12) day (1-31) and information regarding wheather it is a leap year or not (1 for leap year, 0 for non-leap year).

Inputs: mo(months), da(days), leap (1 for leap year, 0 for non-leap year)

Outputs:number of days that have leaped in the year up to the given date

### falsePosition.m
falsePosition.m uses a function, a lower estimate, an upper estamate, and the number of desired iterations to find the associated roots using the false position method.

Inputs: the function, the lower estimate, the upper estimate, the requested approximate error, and the maximum amount of iterations

Outputs: the x value of the estimate, the y value of the estimate, the approximate error, and the number of iterations completed

### luFactor.m
luFactor.m is a function that determines the LU Factorization of a square matrix (with the use of partial pivoting).

Inputs: Coefficient Matrix [A]

Outputs: lower triangular matrix [L], upper triangular matrix [U],





