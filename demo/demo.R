# Demonstration

# install from github
# devtools::install_github("mathzero/ICoLour")


# load libraries
library(ggplot2)
library(ICoLour)
library(dichromat)
library(ICoLour)


# generate dummy data
n=1000
mydat=data.frame(x=rnorm(n,0,1),
                 y=rnorm(n,0,1),
                 col=as.factor(sample(c("A", "B", "C", "D","E","F"),size = n, replace = T)))

# create plot with core colours
ggplot(mydat,aes(x=x,y=y,col=col)) +
  geom_point() +
  theme_bw() +
  scale_color_imperial(palette = 'default', discrete = T,reverse = T)


# create plot with core colours
ggplot(mydat,aes(x=x,fill=col, col=col)) +
  geom_density() +
  theme_bw() +
  scale_color_imperial(palette = 'default', discrete = T,reverse = F)+
  scale_fill_imperial(palette = 'default', discrete = T,reverse = F) +
  facet_wrap(.~col)


# create plot with warm colours
ggplot(mydat,aes(x=x,y=y,col=col)) +
  geom_point() +
  theme_bw() +
  scale_color_imperial(palette = 'warm', discrete = T)


# create plot with blue colours
ggplot(mydat,aes(x=x, y=col,col=col)) +
  geom_boxplot() +
  theme_bw() +
  scale_color_imperial(palette = 'blue', discrete = T)


# create plot with blue green gradient
ggplot(mydat,aes(x=x, y=y, col=y)) +
  geom_point() +
  theme_bw() +
  scale_color_imperial(palette = 'blue green gradient', discrete = F)

