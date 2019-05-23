#data from www.superdatascience.com
setwd("/Users/rishika/Desktop/")
getwd()
Movie_Data <- read.csv("movie_data.csv")
head(Movie_Data)
colnames(Movie_Data)<- c('Day', "Director", "Genre", "Title", "Release_ Date", "Studio","Adjusted_Gross", "Budget_Millions","Gross_Millions"
                         ,"IMDB_Rating", "MovieLens_Rating", "Overseas_Millions","Overseas_Percentage","Profit_Millions","Profit_Percentage","Duration","US_Miilions","Gross_US_Percentage")
head(Movie_Data)
summary(Movie_Data)
str(Movie_Data)
#Filtering Dataset
filter1<- Movie_Data$Studio =='Buena Vista Studios' | Movie_Data$Studio =='WB'| Movie_Data$Studio =='Fox'| Movie_Data$Studio =='Universal' | Movie_Data$Studio =='Sony' | Movie_Data$Studio == 'Paramount Pictures'
filter2<- Movie_Data$Genre=='action'| Movie_Data$Genre =='animation' | Movie_Data$Genre=='comedy' | Movie_Data$Genre=='drama'| Movie_Data$Genre=='adventure'
Movie_Dataset <- Movie_Data[filter1 & filter2,]


library(ggplot2)

Plot<- ggplot(data = Movie_Dataset, aes(x= Genre, y=Gross_US_Percentage,colour= Genre, size=Budget_Millions, alpha=.5))
Plot + geom_jitter(alpha=.5)+ geom_boxplot(alpha=.5)+
  xlab('Genre') +ylab("US Gross %")+
  ggtitle("Movie Gross % Distribution")+
  theme(axis.title.x = element_text(colour = 'Blue', size=15, family = 'Times New Roman'),
        axis.title.y = element_text(colour = 'Blue', size=15,family = 'Times New Roman'),
        legend.title =   element_text(colour= "Pink", family = 'Times New Roman') ,
        plot.title = element_text(size = 20, family='Times New Roman')
        )
                                                                          
                                                                          
                                                                          
                                                                          
                                                                          
                                                                          
                              