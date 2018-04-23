function [min] = goldenSearch (f, xl, xr)
 
%%
a=[.633319 .408082; .77389 .912945]
b=[6;0];
x=a\b
%t=transpose(a);
%y=inv(a)
%%
clc
clear
[A]=[6 0 -1 0 0; -3 3 0 0 0 ; 0 -1 9 0 0 ; 0 -1 -8 11 -2;-3 -1 0 0 4];
[B]=[4 0; 0.5 2];
[C]=[2 -2; 3 1];
[D]=[C]*[A]