function [root,fx,ea,iter] = falsePosition(func,xl,xu,es,maxiter)
%falsePosition.m uses a function, a lower estimate, an upper estamate, and
%the number of desired iterations to find the associated roots.
clearvars -except func xl xu es maxiter 
%^clears all variables in the workspace except those being used in the
%function.
msg= 'please provide values for the function, lower guess, upper guess, and number of iterations';
msg2= 'there is no sign change between the lower and uper estimates';
if nargin < 3
    error (msg)
elseif nargin < 4
    es=0.0001;
    maxiter=200;
end
%^checks to see if you have enough inputs. This is also where the defaults
%are set if inputs are missing.
f=@(x) ((x/(1-x))*sqrt((6/(2+x)))-.05);%<<<<<<<<<<input function here!
l=f(xl);
u=f(xu);
if sign(l)== -1 && sign (u) == -1 || sign(l)== 1 && sign (u) == 1
    error (msg2)
end
%^checks to see if your bracket does in-fact encompass a crossing between
%the positive and negitive.
iter=0;
for i=1:maxiter
    root=xu-((f(xu)*(xl-xu))/(f(xl)-f(xu)));
    fx=f(root);
    iter=iter+1;
    if abs((root-xu)/root)*100 <= es
       break
    end
    if sign(fx*f(xl))== -1
        xu=root;
        continue
    else 
        xl=root;
        continue
    end
end
%^ this "for" loop uses the falsePosition equation to determine a more
%precise root by replacing the used upper and lower estimates with the new
%root estimations.The relative error of each new root position is tested
%against the requested relative error. If in an iteration the new root
%position is accurate enough to pass this test, the loop is broken and
%specific variables are returned appropriatly. If the test is never
%satisfied, the maximum amount of iterations (predetermined) are used.
ea = abs((root-xu)/root)*100 ;
A1=[iter,root,fx,ea];
formatSpec = 'After %f iterations the root was determined to be %f. At this position, the value of the function is %f and the realitive error is %f percent. ';
fprintf(formatSpec,A1)
%^the corresponing values are printed in a way that the information gained
%through the function can be easily interpreted.