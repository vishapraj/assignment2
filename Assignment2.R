#Question no.2
library(imager)
flip<-function(a)
{
  b<-load.image(a)
  c<-mirror(b,"X")
  return(plot(c))
}
flip("land1.jpeg")

library(tidyverse)
library(rvest)
stack<-read_html("https://stats.stackexchange.com/questions?tab=Votes")
stack

load("iris.Rdata")
head(dat)

#question no.4
library("tidyverse")
library("rvest")
urls_paste <- 1:13854
answers<-c()
views<-c()
votes<-c()
titles<-c()
for (i in 1:13854)
  {urls_paste[i] <- paste("https://stats.stackexchange.com/questions?tab=newest&page=", urls_paste[i], sep = '')}
for (i in 1:13854)
{
  html <- read_html(urls_paste[i])
  title_of_questions <- html %>% html_elements("#questions .s-link") %>% html_text()
  views_number <- html %>% html_elements(".s-post-summary--stats-item__emphasized~ .s-post-summary--stats-item+ .s-post-summary--stats-item .s-post-summary--stats-item-number") %>% html_text()
  answers_number <- html %>% html_elements(".s-post-summary--stats-item__emphasized+ .s-post-summary--stats-item .s-post-summary--stats-item-number") %>% html_text()
  votes <- html %>% html_elements(".s-post-summary--stats-item__emphasized .s-post-summary--stats-item-number") %>% html_text()
  titles = append(titles, title_of_questions)
  views = append(views, views_number)
  answers = append(answers, answers_number)
  votes = append(votes, votes)
}
data.frame("title_of_questions"=titles,"views_number"=views,"answers_number"=answers,"votes"=votes)

#Question no.1
a<-data("iris")
boxplot(len~1:250,a)

#Question no.3
# Load the required library
#question c
library(MASS)
data("ships")
ship= cbind(ships[1],ships[5])
plot(ship)
#from the plot it is seen that B has highest incident cases

