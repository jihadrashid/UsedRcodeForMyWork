library(vcd)
data(Arthritis)
data(iris)
# Correlations with significance levels
cor.test(iris$Sepal.Length, iris$Sepal.Width,method = "pearson", conf.level = 0.95)
cor.test(iris$Sepal.Length, iris$Sepal.Width,method = "kendall", conf.level = 0.95)
cor.test(iris$Sepal.Length, iris$Sepal.Width,method = "spearman", conf.level = 0.95)

#Chi square test
chisq.test(Arthritis$Treatment,Arthritis$Improved)


# independent 2-group Mann-Whitney U Test
# where y is numeric and A is A binary factor
wilcox.test(Arthritis$Age~Arthritis$Sex)
# where y and x are numeric
wilcox.test(iris$Sepal.Length,iris$Petal.Length)


# Kruskal Wallis Test One Way Anova by Ranks
kruskal.test(Arthritis$Treatment~Arthritis$Improved)


# independent 2-group t-test
# where y is numeric and x is a binary factor
t.test(Arthritis$Age~Arthritis$Treatment)
# where y1 and y2 are numeric
t.test(iris$Sepal.Length,iris$Petal.Length)


