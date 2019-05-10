clear ; close all; clc
pkg load io;
pkg load statistics;

# read data
C = csv2cell('FE75.csv');
header = C(1,:);
X = cell2mat(C(2:end,:));

n =3;
[m, p] = size(X);
alpha = 0.01;

#plot(data(:,1),data(:,2),'o')
UCL = ((p*(m-1)*(n-1))/(m*n-m-p+1))*finv(1-alpha, p, m*n-m-p+1);

S = cov(X);
mu = mean(X);
T = zeros(m, 1);

for i = 1:m
  x = X(i,:);
  T(i) = n*(x-mu)*inv(S)*(x-mu)';
end

