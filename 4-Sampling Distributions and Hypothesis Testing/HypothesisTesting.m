clear ; close all; clc
pkg load io;
pkg load statistics;

X = csvread('injection_molding-cooling.csv');

X1= X(2:31,2);
X2= X(32:end,2);
N1 = 30;
N2 = 24;

Alpha = 0.05

# Compare two processes

X1_mean = mean(X1);
X1_std = std(X1);
X2_mean = mean(X2);
X2_std = std(X2);

t = (X1_mean - X2_mean)/sqrt(X1_std^2/N1+X2_std^2/N2);
