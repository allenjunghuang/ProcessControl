# 6-Multivariate Methods
# EWMA

X = read.csv("q7data.csv", header = FALSE);
colnames(X) <- c("var1", "var2","var3","var4");
X$seq <- ceiling(c(1:nrow(X))/n);

n <- 4;
mu <- 10;
sigma <- 1;

Xbar <- aggregate(X[c("var1","var2","var3","var4")], by=X[c("seq")], FUN=mean);
S <- aggregate(X[c("var1","var2","var3","var4")], by=X[c("seq")], FUN=sd);

# ================ Xbar Chart ================
UCL <- mu + 3*sigma/sqrt(n);
LCL <- mu - 3*sigma/sqrt(n);

sapply(Xbar[c("var1","var2","var3","var4")], function(x) which(x > UCL));

# ================ S Chart ================
C4 <- sqrt(2/(n-1))*(gamma(n/2)/gamma((n-1)/2));

UCL <- sigma + 3*sigma*sqrt(1-C4^2);
LCL <- sigma - 3*sigma*sqrt(1-C4^2);

if (LCL < 0) {
  LCL = 0;
}

