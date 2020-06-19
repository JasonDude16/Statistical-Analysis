###########################################################################
# CHAPTER 2- BASIC PROGRAMMING CONCEPTS -----------------------------------
###########################################################################

# -------------------------------------------------------------------------

mean(1:10)

# -------------------------------------------------------------------------

21 + 21   # Addition
43 - 20   # Subtraction
4 * 4     # Multiplication
45 / 3    # Division
2 ^ 3     # Exponentiation
sqrt(16)  # Square root

# -------------------------------------------------------------------------

# R follows PEMDAS rules
(((3 + 2)^2) + (10 * 2)) - 4
(3 + 2)^2 + 10 * 2 - 4

# -------------------------------------------------------------------------

x <- 5
x = 5

# -------------------------------------------------------------------------

x <- sqrt(34 + ((12 * 2)^3 - 5))
x # typing x by itself will print the value to the concole

# -------------------------------------------------------------------------

head(iris)

# -------------------------------------------------------------------------

subset(iris, Species == "virginica")

# -------------------------------------------------------------------------

iris_virginica <- subset(iris, Species == "virginica")
head(iris_virginica)

# -------------------------------------------------------------------------

# 0.5, 2         # 1. Numeric class
# TRUE, FALSE    # 2. Logical class
# "hat", "dog"   # 3. Character class
# 5L, 12L        # 4. Integer class ("L" stores the value as an integer)
# 1+0i, 2+4i     # 5. Complex class

# -------------------------------------------------------------------------

y <- c(1,2,3,4,5)
y

# -------------------------------------------------------------------------

y <- c(3, 3, 7, 7, 7, 3, 5, 5, 3, 7)
y <- factor(y) # y is converted to a factor with 3 levels
y 

# -------------------------------------------------------------------------

y <- c("cat", "dog", "cat", "cat", "dog", "cat", "dog")
y <- factor(y) # y is converted to a factor with 2 levels
y

# -------------------------------------------------------------------------

head(mtcars)

# -------------------------------------------------------------------------

y <- c("cat", "dg", "cat", "cart", "dog", "cat", "dog")
y <- factor(y) 
y

# -------------------------------------------------------------------------

y <- c("cat", "dg", "cat", "cart", "dog", "cat", "dog")
y <- factor(y, levels = c("cat", "dog"))
y

# -------------------------------------------------------------------------

y <- c("cat", "dg", "cat", "cart", "dog", "cat", "dog")
y <- factor(y, levels = c("cat", "dog"), labels = c(0, 1))
y

# -------------------------------------------------------------------------

?lm

# -------------------------------------------------------------------------

lm(formula = mpg ~ hp, data = mtcars)

# -------------------------------------------------------------------------

lm(formula = mpg ~ hp, data = mtcars, subset = c(1:10))

# -------------------------------------------------------------------------

###########################################################################
# CHAPTER 3- PACKAGES AND LIBRARIES ---------------------------------------
###########################################################################

# -------------------------------------------------------------------------

hist(rnorm(100))

# -------------------------------------------------------------------------

library(ggplot2)
set.seed(1)
ggplot(tibble::tibble(rnorm = rnorm(100, mean = -1)), aes(x = rnorm)) +
    geom_density(tibble::tibble(rnorm = rnorm(100, mean = 1)), 
                 mapping = aes(x = rnorm), 
                 fill = "blue", 
                 alpha = .7) +
    geom_density(fill = "red", alpha = .7) + 
    theme_bw() +
    labs(title = "A Colorful Histogram Example") + 
    xlab("Random Normal Distribution") +
    ylab("Density") +
    theme(panel.grid.minor.y = element_blank(),
          panel.grid.minor.x = element_blank(),
          panel.grid.major.y = element_blank(),
          panel.grid.major.x = element_blank(),
          text = element_text(size = 16, family = "serif"))

# -------------------------------------------------------------------------

# NOTE: The code below installs the tidyverse package. It's commented out, so
# you will have to delete the hashtag to run the code. It's commented out
# so you don't accidently reinstall the package every time you run this script 
# (which isn't a bad thing, per se, but it's time-consuming and unnecessary).

# install.packages("tidyverse")

# It's also commented out because it's not nice to install packages on 
# somebody's computer without them realizing it :)

# You only need to install a package once

# -------------------------------------------------------------------------

library(tidyverse)

# Now try running the ggplot code above. A plot should appear in the lower
# right pane.

# -------------------------------------------------------------------------

###########################################################################
# CHAPTER 4- READING/WRITING DATA -----------------------------------------
###########################################################################

# -------------------------------------------------------------------------

getwd()

# -------------------------------------------------------------------------

# This code was not included in the book, but it is included here just to 
# make sure your working directory is correctly set to the data folder

setwd("./data")

# -------------------------------------------------------------------------

data_csv <- read.csv("BMI_1.csv")
# Don't forget to assign the csv file to an object

# -------------------------------------------------------------------------

# txt file
data_txt <- read.delim("BMI_1.txt")

# excel file
data_xlsx <- readxl::read_excel("BMI_1.xlsx")
# You need to load the tidyverse package to use the read_excel() function

# -------------------------------------------------------------------------













