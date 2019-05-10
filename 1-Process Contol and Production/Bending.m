clear ; close all; clc
pkg load io;

[A, T, R, limit] = xlsread ('bending-depth.xlsx', 'Sheet1', 'A5:C33');

header = {'Sequence','Thickness::0.75mm','Thickness::1.5mm'}; 
cell2csv('bending-depth.csv', header);
dlmwrite('bending-depth.csv', A, 'delimiter',',','-append');

plot(A(:,1), A(:,2), 'r', A(:,1), A(:,3), 'b')