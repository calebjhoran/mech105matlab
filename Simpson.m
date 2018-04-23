function I = Simpson(x,y)
%This is a function for integrating experimental data using Simpson’s 1/3 rule. The function checks if there are an odd number of intervals, if there are, the trapezoidal rule is used for the last interval.
%Inputs:x and y vectors
%Output:estemated integral I
clc

b=size(y,2);
c=size(x,2);
h=x(2)-x(1);
msg='These x inputs are not equally spaced';
msg1='The two input vectors, x and y, are not the same length';
msg2='The trapazoidal rule has to be used on the last interval'; 
%^setting variables and error/warning messages for future use 
for g=1:c-2
    if x(g+1)-x(g)~=x(g+2)-x(g+1)
    error(msg)
    end
end
%^checks to see if the x inputs are equally spaced
if b ~= c
    error(msg1)
end
%^checks to see if the amount of x inputs is the same as y
evenorodd = mod(c,2);
if evenorodd == 1
%^checks to see if we were given an even or odd amount of intervals
    I=0;
    for i=1:c-2
        j=h*(y(i)+4*y(i+1)+y(i+2))/6;
        I=I+j;
    end
    %^process for even number of intervals/ odd number of values within
    %vector
else
    warning (msg2)
    I=0;
    for i=1:c-3
        j=h*(y(i)+4*y(i+1)+y(i+2))/6;
        I=I+j;
    end
    fintrap=(x(c)-x(c-1))*(y(b)-y(b-1))/2;
    I=I+fintrap;
    %^process for odd number of intervals/ even number of variables within
    %vector...includes warning
end
