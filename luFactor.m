function [L,U,P] = luFactor(A)
%luFactor.m is a function that determines the LU Factorization of a square
%matrix (with the use of partial pivoting).
%INPUTS: Coefficient Matrix [A]
%OUTPUTS: lower triangular matrix [L], upper triangular matrix [U],
%Pivot Matrix [P]
clearvars -except A
%Clears variables in the workspace priar to running tests
msg2= 'The user must input a single coefficient matrix';
if nargin <1 || nargin >1
    error (msg2)
end
%checks input perameters
[n,n]=size(A);
P=eye (n);
L=eye (n);
U=zeros (n);
for i=1:n-1
    [~,c]=max(abs(A(i:end,i)));
    c=n-(n-i+1)+c;
    A([i c],:) = A([c i],:);
    P([i c],:) = P([c i],:);
    L([i c],:) = L([c i],:);
    %The pivoting of rows in each of the applicable matrices
    for h = i+1:n
        L(h,i) = A(h,i) / A(i,i);
        %The first step of forward elimination...finding the factor to
        %multiply the equation by (values that will become the lower
        %triangle [L])
        for g =1:n
            U(i,g) = A(i,g);
            A(h,g) = A(h,g) - L(h,i)*A(i,g);
            % the actual elimination through subtraction(values that will
            % become the upper triangle [U])
        end 
    end
end
U(:,end) = A(:,end);
%adding on the last line of elimination (last value in [U])
P
L
U



