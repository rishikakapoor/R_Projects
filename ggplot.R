data<- read.csv(file.choose())
head(data)
str(data)
summary(data)
colnames(data)<- c('Film', "Genre","Ratings","Audience_Ratings","Budget", "Year")

#how to change variable to a factor______________________

data$Year<-factor(data$Year)

#Asthetics_______________________________________________

library(ggplot2)
ggplot(data= data, aes(x= Ratings, y= Audience_Ratings)) + geom_point()

#add colour
#graph =1.....................................
p<-ggplot(data= data, aes(x= Ratings, y= Audience_Ratings, colour= Year, size= Budget )) 


#layering in plot_________ 
p+geom_point() 

#overriding aes _______

p+geom_point(aes(size= Rating)) 

#Graph 2........................................
p+geom_point(aes(colour = Budget))+ xlab('Budget $$$') + ylab('Ratings***')


p+ geom_line(size=1) + geom_point() 

#Mapping vs settings____________

#mapping:
p + geom_point(aes(colour= Genre))

#setting: without aes
p + geom_point(colour = "  pink")


#Histogram:

s<- ggplot(data=data, aes(x= Budget))
s+ geom_histogram(binwidth  = 10)

# add colour
s+ geom_histogram(binwidth  = 10, fill= 'pink' ) 

s+ geom_histogram(binwidth  = 10, aes( fill=Genre ), colour = 'Black' ) 

#density plot

s+ geom_density(aes(fill= Genre), position = "stack")

t<- ggplot(data = data, aes(x= Ratings))
t+ geom_histogram (binwidth = 10, colour= "blue", fill= 'white')


t<- ggplot(data=data)
t+ geom_histogram( binwidth = 10, aes(x=Audience_Ratings), fill= 'black', colour= 'white')


#statistical transformation:
u<- ggplot(data= data, aes(x=Genre, y = Audience_Ratings, color= Film))
u + geom_point()+ geom_smooth(fill= NA)


v<- ggplot(data= data, aes(x= Genre, y= Ratings, colour= Genre))
 v +   geom_jitter(alpha= .4)+ geom_boxplot(size=1, alpha= .6)

 
 
 
#Facets:
 w<- ggplot(data=data, aes(x= Ratings, fill= Genre))
w+ geom_histogram(binwidth= 10, color= 'black') +
  facet_grid(Genre~Year, scales =  'free')


w+ geom_histogram(binwidth= 10, color= 'black') +
  facet_grid(Genre~Year, scales =  'free')


x<- ggplot(data=data, aes(x= Ratings, y= Audience_Ratings, colour= Genre))
x+ geom_point()+ facet_grid(Genre~Year)+ geom_smooth()+ coord_cartesian(ylim =c(0,100))



#coordinates:

x+ geom_point()+ facet_grid(Genre~Year)+
  geom_smooth()+ coord_cartesian(ylim =c(0,100))


#theme
Y<- ggplot(data = data, aes(x=Audience_Ratings, fill= Genre))
z<-Y + geom_histogram(binwidth = 5, colour= "Black")

z+xlab("Ratings")+ ylab("Number of Movies") +
  ggtitle("Movie Distribution Plot")+
  theme(axis.title.x = element_text(size=20, colour="Blue"), 
        axis.title.y = element_text(size=20, colour="Blue"),
        axis.text.x = element_text(size=10),
        axis.text.y = element_text(size=10),
        legend.title = element_text(colour="pink", size = 10),
        legend.position = c(1,1), 
        legend.justification = c(1,1),
        plot.title = element_text
        (colour= 'Purple', size=20)
        )




  