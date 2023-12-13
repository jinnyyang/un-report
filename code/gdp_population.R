2+2
## control + return to run the line (just that single line)
## call the function
library(tidyverse)

library(readr)
gapminder_1997 <- read_csv("gapminder_1997.csv")
View(gapminder_1997)

## option + dash to make <- 
name <- "Jinny"
name

age <- 10
age

name <- "type whatever" # "quotes" use for read the text
name

## object can't start with a number, no spaces for an object, avoid using "." and "_"

test <- read_csv("gapminder_1997.csv")

Sys.Date() ## output current date
getwd() ## output current directory

sum(5, 6)
round(3.14159, digits = 2)
read_csv(file = "gapminder_1997.csv")

#####
## let's start ggplot! 
library(ggplot2)
gapminder_1997 <- read_csv("gapminder_1997.csv")
ggplot(data = gapminder_1997) + 
  aes(x = gdpPercap) + 
  labs(x = "GDP Per Capita") +
  aes(y = lifeExp) + 
  labs(y = "Life Expectancy") + 
  geom_point() + 
  labs(title = "Do people in wealthy countries live longer?") + 
  aes(color = continent) + 
  scale_color_brewer(palette = "Set1") + # https://r-graph-gallery.com/38-rcolorbrewers-palettes.html
  aes(size = pop/1000000) + 
  labs(size = "Population\n(in millions)") +
  aes(shape = continent)

### Let shorten up!
ggplot(data = gapminder_1997) + 
  aes(x = gdpPercap, y = lifeExp, color = continent, size = pop/1000000, shape = continent) +
  geom_point() + 
  scale_color_brewer(palette = "Set1") +
  labs(x = "GDP Per Capita", 
       y = "Life Expectancy", 
       size = "Population\n(in millions)",
       title = "Do people in wealthy countries live longer?") 

### Challenge!
gapminder_data <- read_csv("gapminder_data.csv")

##take a look at you data before plotting
dim(gapminder_data)
head(gapminder_data)

ggplot(data = gapminder_data) + 
  aes(x = year, y = lifeExp, color = continent) +
  geom_point(shape = 1) + 
  scale_color_brewer(palette = "Set1") +
  labs(x = "Year", 
       y = "Life Expectancy", 
       title = "Do people live in more recent year live longer?") 
  



  
co2_data <- read_csv("co2-un-data.csv")



 geom_text(aes(label = country))







library(tidygraph)
library(tidyr)
library(tidyselect)
library(tidytree)

