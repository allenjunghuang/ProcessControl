clear ; close all; clc
pkg load io;
pkg load statistics;

#[A, T, R, limit] = xlsread ('DATA-3.6.1.xlsx', 'Sheet1', 'B3:D103');

#header = {'Sequence','Thickness::0.75mm','Thickness::1.5mm'}; 
#cell2csv('DATA-3.6.1.csv', header);
#dlmwrite('DATA-3.6.1.csv', A, 'delimiter',',','-append');

A = xlsread ('LAB.xlsx', 'Sheet1','B7:B68');
B = xlsread ('LAB.xlsx', 'Sheet1','C7:C69');
C = xlsread ('LAB.xlsx', 'Sheet1','D7:D102');

mean(A)
std(A)
skewness(B)
kurtosis(B)
#normplot(A)
#anderson_darling_test(A(:,2),'normal')
#kolmogorov_smirnov_test(A(:,2), "normal");

figure(1)
hist(A)
figure(2)
hist(B)
figure(3)
hist(C)