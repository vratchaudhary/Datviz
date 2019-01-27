
library(ggplot2)
a<-data(mtcars)
head(a)
a<-mtcars
#######
#####1. Bar chart, to compare the mpg wrt the number of cylinders
ggplot(data=a, aes(x=cyl,y=mpg)) +
  geom_col(fill = "red")+
  theme_bw()+
  scale_x_continuous("Cylinder", breaks = seq(0,10,2)) +
  scale_y_continuous("mpg", breaks = seq(0,300,50)) +
   labs(title = "Bar Chart") 

##############
#####2. Scatter plot
ggplot(data=a, aes(x=disp,y=mpg)) +
  geom_point(aes(color=as.factor(gear),pch=as.factor(gear)),size=2)+
  theme_bw()+
  scale_x_continuous("Diaplay", breaks = seq(0,500,100)) +
  scale_y_continuous("Mpg", breaks = seq(0,50,5)) +
  labs(title = " Scatter plot")


################
############3. Facet wraps