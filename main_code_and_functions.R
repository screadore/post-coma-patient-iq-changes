#AUTHOR: STEFAN G. CREADORE, University of South Florida.
#Date created: April 10th 2020.

#This package was created for visualizing and comparing the COVID-19 confirmed cases, deaths, and recoveries across multiple countries.

#Begin by installing the packages devtools and roxygen2 this will help us compile and build our packages.
install.packages("devtools")

# Install the package "roxygen2" the goal of roxygen2 is to make documenting your code as easy as possible. It has a number of advantages over writing . Rd files by hand: Code and documentation are intermingled so that when you modify your code, you're reminded to also update your documentation.
install.packages("roxygen2")

#If you need to get the most up-to-date devtools package. It can be found on Hadley's github. load devtools and install it from hadleys github. The username is "hadley".
library(devtools)
install_github("devtools", "hadley")


#list of packages required
install.packages("readr")
install.packages("roxygen2")
install.packages("devtools")
install.packages("dplyr")
install.packages("ggplot2")
install.packages("scales")
install.packages("quantmod")

#list of libraries used
library(readr)
library(ggplot2)
library(scales)
library(quantmod)
library(devtools)
library(roxygen2)
library(dplyr)


# List of main functions used.
plot()
curve(f*x^3,add=T)
pairs()
read.table("file name.csv", header = TRUE, sep = ",", stringAsFactors = FALSE)
alternatively you can use read.csv("filename.csv")


#Naming our dataset to be found under the function "COVID19DEATHS".
COVID19DEATHS<-read.csv("deaths.csv")

#Test if it works and if it's comma separated.
colnames(COVID19DEATHS)

#Importing dataset into ggplot2.
ggplot(data = COVID19DEATHS)


#Viewing the data plotted.
plot(COVID19DEATHS)

#Viewing a summary of the data using the "summary" function.
summary(COVID19DEATHS)

#Viewing the dataset using ggplot.
View(COVID19DEATHS)

#Plotting the data points. x = country, y = deaths.
ggplot(COVID19DEATHS, aes(x="country", y="deaths")) + geom_point() + geom_jitter() + geom_smooth(method = 'lm')

ggplot(data = COVID19DEATHS) + geom_point(mapping = aes(x = "value", y = DEATHS), stroke=1, position = "jitter")

ggplot(data = COVID19DEATHS) + geom_bar(mapping = aes(x = country)) + xlab("country") + coord_flip()

