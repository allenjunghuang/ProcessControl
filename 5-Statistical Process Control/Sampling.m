clear ; close all; clc
pkg load io;
pkg load statistics;


# Standard deviation distribution and correction factor
n =5; m =10000;

y =randn(m,n);

R =range(y'); 
S =std(y');

C4 = sqrt(2/(n-1))*(gamma(n/2)/gamma((n-1)/2))