clear ; close all; clc;
pkg load io;

[A, T, R, limit] = xlsread ('injection_molding-cooling.xlsx', 'Sheet1', 'B3:C57');

header = {'Sequence','Dimension'}; 
cell2csv('injection_molding-cooling.csv', header);
dlmwrite('injection_molding-cooling.csv', A, 'delimiter',',','-append');


CHANGE_POINT = 25;
SPEC = 61.2;


plot(A(:,1), A(:,2), 'r')

sum(A(:,2) < SPEC)

A1 = A(1:24,2);
A2 = A(25:54,2);
dim_shifting = mean(A1) - mean(A2);

A2 = A2 + dim_shifting;

sum(A1 < SPEC) + sum(A2 < SPEC)