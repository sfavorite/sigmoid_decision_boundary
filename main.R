# Logistic regression on a linear data set and a circle

sigmoid <- function(x) {
    1 / (1 + exp(-x))
}


x1 <- c(0.1, 3.1, 1.4, 1.3, 2.1, 2.2, 1.5, 1.2, 2,  2.5, 2.1, 3, 2.2, 2.3, 3,   3,  2.9, 3,   0.5, 0.5, 1,   0.9, 0.5, 1,   1.8)
x2 <- c(0.1, 0.5, 1.7,   2.5, 1.6, 0.7, 1.1, 3.3, 3.1,3.2, 3,   3, 2.9, 2.4, 2.5, 1.9, 2.7,1.8, 2.1, 1.8, 1.5, 1.1, 0.5, 0.5, 0.3)
x <- cbind(x1, x2)
x <- cbind(1, x)
plot(x1, x2, xlab="x1", ylab="x2", main="My stuff")
abline(a=3, b=-1, col="green")

# Define theta (our decision boundary)
theta <- matrix(c(-3, 1, 1), ncol=3)

g <- x %*% t(theta)
y <- sigmoid(g)


for (i in 1:24) {
    if (y[i] < .5) {
        print(y[i])
        points(x1[i], x2[i], col="red", pch=20)
    } else {
        points(x1[i], x2[i], col="blue", pch=16)
    }
}

