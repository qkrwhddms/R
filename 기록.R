print("Hello World")
9*8*7*6*5*4*3*2*1
factorial(9)
rep(x="배고파", times=5)
plot(10,10)
plot(c(5,7), c(20,30))
plot(runif(100),runif(100))
Object1 <- 1
Object2 <- 2
Object1
Object2
1+2
Object1 <- "문자열"
Object2 <- "데이터"
paste(Object1,Object2)
Object1 <- TRUE
Object2 <- FALSE
Object1
Object2
Object1 <- 1
Object1
Object2 <- 2
Object1 <- Object2
Object1
Object1 <- 1
Object2 <- 2
Object1 <- Object2
Object2 <- 100
Object1
Object1 <- sum(1,8,4,5,9)
Object1
a <- c(1,3,5,6,9)
a
a <- 1
is.vector(a)
a <- c(1,2,5)
is.vector(a)
a <- c("첫 번째","두 번째","배고파")
a
a <- c(1,2,5,"점심")
a
Object <- c(1,3,8,9)
Object <- c(Object,11)
Object
Object <- c(0,Object)
Object
Object <- append(Object,99,after=2)
Object
Object <- Object[-2]
Object
Object <- Object[-length(Object)]
Object
Object[3] <- 9
Object
Object <- c(1,2,3,1,2,3,1,2,3,5,1,2,3,5,1,2,3)
Object
Object[Object == 5] <- 100
Object
ls()
ls.str()
rm(객체명,객체명,객체명)
rm(list=ls())
install.packages("rgl")
library("rgl")
example(plot3d)
install.packages("rgl")
install.packages("ggplot2")
install.packages("ggthemes")
install.packages("data.table")
install.packages("devtools")
install.packages("dplyr")
install.packages("plyr")
install.packages("reshape2")
install.packages("scales")
install.packages("stringr")
library()
installed.packages()
List <- read.csv("example_studentlist.csv")
List
List <- read.table("studentlist.txt")
List
List <- read.table("studentlist.txt",header=TRUE)
List
install.packages("readxl")
library("readxl")
DF <- read_excel(path="studentlist.xlsx",sheet="Sheet1",col_names=TRUE)
DF


1+1
a1 <- c(5,3,6,3,1)
a1
is(a1)
a1 <- c(1L,2L,3L)
a1 <- as.integer(a1)
is(a1)
b <- c(1.23, 6.63452, 4.34234)
b
is(b)
a2 <- c("짬뽕","짜장면","짬뽕","짬뽕","짜장면")
a2
a3 <- c(7,3,7,5,2,"짜장면")
a3
is(a3)
a2 <- as.factor(a2)
a2
is(a2)
a3 <- c(3.62,5.45,2.54,3.67,7.23)
a3
DF <- data.frame(a1,a2,a3)
DF
DF <- data.frame(count=1, food=a2,meanCount=a3)
DF
DF <- read.csv("example_studentlist.csv")
DF
is.vector(DF$height)
str(DF)
DF$height
mean(DF$height)
Height <- DF$height
class(DF[[7]])
Height
DF[[7]]
DF[7]
class(DF[[7]])
class(DF[7])
DF <- read.csv("example_studentlist.csv")
DF[c(6,7)]
DF[c("bloodtype","height")]
DF[,7]
DF[2,]
DF[2,1]
DF[,"height"]
DF <- read.csv("example_studentlist.csv")
attach(DF)
height
detach(DF)
DF <- read.csv("example_studentlist.csv")
subset(DF, subset=(height>170))
subset(DF, select=c(name,height),subset=(height>180))
subset(DF, select=-height)
subset(DF, select=c(-height,-weight))
DF <- read.csv("example_studentlist.csv")
colnames(DF)
colnames(DF) [6] <- "blood"
DF
OldList <- colnames(DF)
NewList <- c("na","se","ag","gr","ab","bl","he","we")
colnames(DF) <- NewList
DF
DF <- read.csv("example_studentlist.csv")
BMI <- DF$weight/DF$height^2
BMI
DF <- cbind(DF, BMI)
DF
DF <- read.csv("example_studentlist.csv")
Omit <- read.csv("omit.csv")
Omit
DF
DF <- merge(DF, Omit, by="name")
DF
DF <- read.csv("example_studentlist.csv")
ADDCol <- data.frame(name="이미리",sex="여자",age="24",grade="4",adsence="무",bloodtype="A",height=175.2,weight=51)
ADDCol
DF <- rbind(DF,AddCol)
DF
DF <- read.csv("example_studentlist.csv")
a <- c(1:20)
s <- c("파스타","짬뽕","순두부찌개","요거트 아이스크림","커피")
L <- c(T,F,F,T,T,T)
List <- list(DF, a,s,L     )
List
List <- list(DataFrame=DF,Number=a,Character=s,Logic=L)
List
List[1] <- NULL
List["Number"]
List[1]
class(List[1])
List[[1]]
class(List[[1]])
List[c(2,3)]
List[c("Number","Character")]
List$Number
class(List$Number)
List$Character
cass(List$Character)
names(List)[2] <- "Num"
List[2]
names(List) <- c("Num","Cha","Log")
List
DF <- read.csv("example_studentlist.csv")
HeightBySex <- split(DF$height,DF$sex)
HeightBySex
mean(HeightBySex[[1]])
mean(HeightBySex[[2]])
sapply(HeightBySex,mean)
sapply(HeightBySex,sd)
sapply(HeightBySex,range)
DF <- read.csv("example_studentlist.csv")
DF
Freq <- table(DF$bloodtype)
Freq
ReleativeFreq <- prop.table(Freq)
ReleativeFreq
Table <- rbind(Freq, ReleativeFreq)
Table
Table <- addmargins(Table,margin=2)
Table
DF <- read.csv("example_studentlist.csv")
FactorOfHeight <- cut(DF$height,breaks=4)
FactorOfHeight
FreqOfHeight <- table(FactorOfHeight)
FreqOfHeight
FreqOfHeight <- rbind(FreqOfHeight,prop.table(FreqOfHeight))
FreqOfHeight
rownames(FreqOfHeight)[2] <- "RelativeFreq"
FreqOfHeight
CumuFreq <- cumsum(FreqOfHeight[2,])
CumuFreq
FreqOfHeight <- rbind(FreqOfHeight,CumuFreq)
FreqOfHeight
rownames(FreqOfHeight) <- c("도수","상대도수","누적도수")
FreqOfHeight
FreqOfHeight <- addmargins(FreqOfHeight,margin=2)
FreqOfHeight
DF <- read.csv("example_studentlist.csv")
CT <- table(DF$sex,DF$bloodtype)
CT
addmargins(CT)
PropCT <- prop.table(CT)
PropCT
addmargins(PropCT)
PropCT <- prop.table(CT,margin=1)
PropCT
addmargins(PropCT,margin=2)
a <- c(1,2,3,4,NA,6,7,8,9,10)
a
complete.cases(a)
a <- a[complete.cases(a)]
a
a
a <- na.omit(a)
a
library("data.table")
DF <- fread("example_studentlist.csv",data.table=F)
DF
attach(DF)
mean(height, na.rm=T)
median(height, na.rm=T)
range(height, na.rm=T)
quantile(height, na.rm=T)
IQR(height, na.rm=T)
summary(height, na.rm=T)
boxplot(height)
cor(height, weight)
cor.test(height, weight)
cor(DF[,c(3,7,8)])
cor(height, weight, use="complete.obs")
DF2 <- DF
DF2[2,7] <- NA
DF2[4,8] <- NA
DF2
attach(DF2)
cor(height,weight)
cor(height, weight, use="complete.obs")
cor(height, weight, use="everything")
cor(height, weight, use="all.obs")
var(height,na.rm=T)
var(height, weight, na.rm=T)
var(DF[,c(3,7,8)], na.rm=T)
sd(height,na.rm=T)
scale(height)
sd(height) /mean(height)
sd(weight) /mean(weight)
DF <- read.csv("example_studentlist.csv")
attach(DF)
str(DF)
plot(age)
plot(height, weight)
plot(weight~height)
sex <- as.factor(sex)
plot(height, sex)
plot(sex, height)
DF2 <- data.frame(DF$height,DF$weight)
DF2
plot(DF2)
DF3 <- cbind(DF2, DF$age)
DF3
plot(DF3)
plot(DF)
plot(weight~height, pch=as.integer(sex))
legend("topleft",c("남","여"),pch=DF$sex)
coplot(weight~height | sex)
plot(weight~height, ann=F)
title(main="A대학 B학과생 몸무게와 키의 상관관계")
title(xlab="몸무게")
title(ylab="키")
grid()
weightMean <- mean(height)
abline(v=weightMean, col="red")
FreqBlood <- table(DF$bloodtype)
FreqBlood
barplot(FreqBlood)
title(main="혈액형별 빈도수")
title(xlab="혈액형")
title(ylab="빈도수")
Height <- tapply(DF$height, DF$bloodtype, mean)
Height
barplot(Height, ylim=c(0,200))
boxplot(height)
boxplot(height~bloodtype)
hist(height)
hist(height, breaks=10)
hist(height,breaks=10,prob=T)
lines(density(height))
BreakPoint <- seq(min(height), max(height) +7, by=7)
hist(height, breaks=BreakPoint)
Diffpoint <- c(min(height), 165, 170, 180, 185, 190)
hist(height, breaks=Diffpoint)
par(mfrow=c(2,3))
plot(weight,height)
plot(sex,height)
barplot(table(bloodtype))
boxplot(height)
boxplot(height~bloodtype)
hist(height,breaks=10)
par(mfrow=c(1,1))
plot(weight~height+age+grade+absence+sex)
TS1 <- c(round(runif(30)*100))
TS1
TS2 <- c(round(runif(30)*100))
TS2
TS1 <- sort(TS1, decreasing=F)
TS2 <- sort(TS2, decreasing=F)
TS1
TS2
plot(TS1, type="1")
lines(TS2, lty="dashed",col="red")
x1 <- seq(1,100,1)
y1 <- dbinom(x1, 100, 0.25)
x2 <- seq(1,50,1)
y2 <- dbinom(x2, 50, 0.5)
plot(x1, y1, type="h", ylim=c(0,0.2))
lines(x2, y2, col="red")
DF1 <- data.frame (x=x1, y=y1, t=1)
DF2 <- data.frame (x=x2, y=y2, t=1)
DF <- rbind(DF1, DF2)
plot(DF$y~DF$x, type="p", pch=DF$t, col=c("red", "blue")
plot(x1, y1, type="p")
plot(x1,y1,type="1")
plot(x1,y1,type="c")
plot(x1,y1,type="b")
plot(x1,y1,type="o")
plot(x1,y1,type="h")
plot(x1,y1,type="s")
library("ggplot2")
library("ggthemes")
ggplot(data=diamonds,aes(x=carat, y=price, colour=clarity)) + geom_point() + theme_wsj()
a <- plot(height)
a
g1 <- ggplot(data=diamonds,aes(x=carat,y=price,colour=clarity))
g2 <- geom_point()
g3 <- theme_wsj()
g1+g2+g3
g1 + g2 + theme_bw()
DF <- read.csv("example_studentlist.csv")
g1 <- ggplot(DF, aes(x=height, y=weight, colour=bloodtype))
g1 + geom_point()
g1 + geom_line()
g1 + geom_line() + geom_point()
g1 + geom_line(size=1) + geom_point(size=10)
g1 + geom_point(size=10) + geom_line(size=1) + facet_grid(.~sex)
g1 + geom_point(size=10) + geom_line(size=1) + facet_grid(sex~.)
g1 + geom_point(size=10) + geom_line(size=1) + facet_grid(sex~., scales="free")
g1 + geom_point(size=10) + geom_line(size=1) + facet_wrap(~sex, scales="free")
g <- ggplot(mpg, aes(displ, hwy))
g + geom_point()
g + geom_point() + facet_grid(.~class)
g + geom_point(alpha=.3) + facet_grid(cyl~class,scales="free")
g + geom_point(alpha=.3) + facet_wrap(cyl~class, scales="free")
g + geom_point(alpha=.3) + facet_wrap(cyl~class, scales="free", ncol=3)
ggplot(DF, aes(x=bloodtype)) + geom_bar()
ggplot(DF, aes(x=bloodtype, fill=sex)) + geom_bar()
ggplot(DF, aes(x=bloodtype, fill=sex)) + geom_bar(position="dodge")
ggplot(DF, aes(x=bloodtype, fill=sex)) + geom_bar(position="identity")
ggplot(DF, aes(x=bloodtype, fill=sex)) + geom_bar(position="fill")
ggplot(DF, aes(x=bloodtype, fill=sex)) + geom_bar(position="dodge", width=0.3)
g1 <- ggplot(diamonds,aes(x=carat))
g1 + geom_histogram(binwidth=0.1, fill="orange")
g1 + geom_histogram(aes(y=..count..), binwidth=0.1, fill="orange")
g1 + geom_histogram(aes(y=..ncount..), binwidth=0.1, fill="orange")
g1 + geom_histogram(aes(y=..density..), binwidth=0.1, fill="orange")
g1 + geom_histogram(aes(y=..ndensity..), binwidth=0.1, fill="orange")
g1 + geom_histogram(binwidth=0.1, fill="orange") + facet_grid(color~.)
g1 + geom_histogram(binwidth=0.1, fill="orange") + facet_grid(color~., scales="free")
g1 + geom_histogram(aes(fill=color), binwidth=0.1, alpha=0.5)
g1 <- ggplot(DF, aes(x=weight, y=height))
g1 + geom_point()
g1 + geom_point(aes(color=sex),size=7)
g1 + geom_point(aes(color=sex, shape=sex),size=7)
g1 + geom_point(aes(color=sex, shape=bloodtype),size=7)
g1 + geom_point(aes(color=height, shape=sex),size=7)
g1 + geom_point(aes(size=height, shape=sex),colour="orange")
g1 + geom_point(aes(color=height, shape=bloodtype),size=7, alpha=0.6)
g1 + geom_point(aes(color=sex), size=7) + geom_smooth(method="lm")
g1 + geom_point(aes(color=sex), size=7) + geom_text(aes(label=name))
g1 + geom_point(aes(color=sex), size=7) + geom_text(aes(label=name), vjust=-1.1, colour="grey35")
library("ggthemes")
g1 + geom_histogram(aes(y=..ndensity..), binwidth=0.1, fill="orange") + theme_wsj()
DF <- mtcars
str(DF)
attach(DF)
plot(DF[,c(1:5)])
plot(DF[,c(6:11)])
plot(mpg~disp)
cor(mpg,disp)
boxplot(mpg)
hist(mpg)
hist(mpg,breaks=10)
boxplot(disp)
hist(disp)
library("ggplot2")
str(diamonds)
library("ggthemes")
ggplot(diamonds, aes(x=x, y=price)) + geom_point()
ggplot(diamonds, aes(x=x, y=price, colour=clarity)) + geom_point()
ggplot(diamonds, aes(x=x, y=price, colour=clarity)) + geom_point() + theme_solarized_2()
ggplot(diamonds, aes(x=x, y=price, colour=clarity)) + geom_point(alpha=0.03) + theme_solarized_2()
ggplot(diamonds, aes(x=x, y=price, colour=clarity)) +
geom_point(alpha=0.03) + guides(colour = guide_legend(override.aes = list(alpha = 1)))+
theme_solarized_2()
ggplot(diamonds, aes(x=x,y=price,colour=clarity)) +
geom_point(alpha=0.03) +
geom_hline(yintercept=mean(diamonds$pric), color="turquoise3", alpha=.8) +
guides(colour=guide_legend(override.aes=list(alpha=1))) +
xlim(3,9) + theme_solarized_2()
TS <- read.csv("example_ts.csv")
TS
library("ggplot2")
library("ggthemes")
ggplot(TS, aes(x=Date, y=Sales)) + geom_line()
ggplot(TS, aes(x=factor(Date), y=Sales,group=1)) + geom_line()
ggplot(TS, aes(x=factor(Date), y=Sales,group=1)) + geom_line() + geom_point()
ggplot(TS, aes(x=factor(Date), y=Sales,group=1)) + geom_line() + geom_point() + theme_light()
ggplot(TS, aes(x=factor(Date), y=Sales,group=1)) + geom_line(colour="orange1", size=1) +
geom_point(colour="orangered2", size=4) + theme_light()
ggplot(TS, aes(x=factor(Date), y=Sales,group=1)) + geom_line(colour="orange1", size=1) +
geom_point(colour="orangered2", size=4) +
xlab("년도") + ylab("매출") + ggtitle("A기업 월별 매출") +
theme_light()
library("dplyr")
library("ggplot2")
library("ggthemes")
DF <- read.csv("example_population_f.csv")
DF <- DF[,-1] # 첫 번째 열은 숫자이기때문에 삭제함
DF <- tbl_df(DF) # dplyr에서 데이터프레임을 다룰 수 있도록 변환
DF
DF2 <- filter(DF, Provinces=="충청북도"|Provinces=="충청남도")
Graph <- ggplot(DF2, aes(x=City, y=Population,
fill=Provinces)) + geom_bar(stat="identity") + theme_wsj()
Graph
GraphReorder <- ggplot(DF2, aes(x=reorder(City,Population),
y=Population, fill=Provinces)) + geom_bar(stat="identity") + theme_wsj()
GraphReorder
DF3 <- filter(DF, SexRatio > 1, PersInHou < 2)
Graph <- ggplot(DF3, aes(x=City, y=SexRatio, fill=Provinces)) +
geom_bar(stat="identity") + theme_wsj()
Graph
library("dplyr")
library("ggplot2")
library("ggthemes")
DF <- read.csv("example_population_f.csv")
DF <- DF[,-1] #불필요한 첫 번째 열은 삭제함
DF <- mutate(DF, SexF = ifelse(SexRatio < 1, "여자비율높음",
ifelse(SexRatio > 1, "남자비율높음", "나여비율같음")))
DF$SexF <- factor(DF$SexF)
DF$SexF <- ordered(DF$SexF, c("여자비율높음","남자비율같음","남자비율높음"))
DF2 <- filter(DF, Provinces=="경기도")
Graph <- ggplot(DF2, aes(x=City, y=(SexRatio-1), fill=SexF)) +
geom_bar(stat="identity",position="identity") + theme_wsj()
Graph
DF4 <- filter(DF, Provinces=="서울특별시")
Graph2 <- ggplot(DF4, aes(x=City, y=(SexRatio-1), fill=SexF)) +
geom_bar(stat='identity', position='identity') + theme_wsj()
Graph2
library("dplyr")
library("ggplot2")
library("ggthemes")
library("reshape2")
DF <- read.csv('example_population_f.csv')
DF <- DF[,-1]
DF <- tbl_df(DF)
group <- group_by(DF, Provinces)
DF2 <-summarise(group, SumPopulation=sum(Population), Male=sum(Male),
Female=sum(Female))
DF3 <- melt(DF2, id.vars = c("Provinces", "SumPopulation"),
measure.vars = c("Male", "Female"))
DF2
DF3
colnames(DF3)[3] <- "Sex"
colnames(DF3)[4] <- "Population"
DF3
DF4 <- mutate(DF3, Ratio = Population/SumPopulation)
DF4$Ratio <- round(DF4$Ratio, 3)
G1 <- ggplot(DF4, aes(x=Provinces, y=Ratio, fill=Sex)) + geom_bar(stat='identity') +
coord_cartesian(ylim = c(0.45, 0.55)) + theme_wsj()
G2 <- geom_text(aes(y=Ratio, label=Ratio), colour="white")
G1 + G2
DF4 <- mutate(DF4, Position = ifelse(Sex == "Male", 0.475, 0.525))
DF4
G1 <- ggplot(DF4, aes(x=Provinces, y=Ratio, fill=Sex)) + geom_bar(stat='identity') +
coord_cartesian(ylim = c(0.45, 0.55)) + theme_wsj()
G2 <- geom_text(aes(y=Position, label=Ratio), colour="white")
G1 + G2
library("dplyr")
library("ggplot2")
library("ggthemes")
DF <- read.csv('example_population_f.csv')
DF <- DF[,-1]
DF <- tbl_df(DF)
DF2 <- mutate(DF,SexF=ifelse(SexRatio > 1, "남자비율높음",
ifelse(SexRatio == 1, "남자비율같음","여자비율높음")))
DF3 <- filter(DF2, Provinces=="경기도")
Graph <- ggplot(DF3, aes(x=(SexRatio-1), y=reorder(City, SexRatio))) +
geom_segment(aes(yend=City), xend=0, colour="grey50") + geom_point(size=4,
aes(colour=SexF)) + theme_minimal()
Graph
library("dplyr")
library("ggplot2")
library("ggthemes")
library("reshape2")
library("scales")
DF <- read.csv('example_population2.csv')
DF <- tbl_df(DF)
group <- group_by(DF, Time)
DF2 <- summarise(group, s0=sum(age0to4, age5to9),
s10=sum(age10to14, age15to19),
s20=sum(age20to24, age25to29),
s30=sum(age30to34, age35to39),
s40=sum(age40to44, age45to49),
s50=sum(age50to54, age55to59),
s60=sum(age60to64, age65to69),
s70=sum(age70to74, age75to79),
s80=sum(age80to84, age85to89),
s90=sum(age90to94, age95to99),
s100=sum(age100to104, age105to109))
head(DF2, 5)
DF3 <- melt(DF2, id.vars="Time", measure.vars=c("s0", "s10", "s20", "s30", "s40",
"s50", "s60", "s70", "s80", "s90", "s100"))
colnames(DF3) <- c("Time", "Generation", "Population")
G1 <- ggplot(DF3, aes(x=Time, y=Population, colour=Generation, fill=Generation)) +
geom_area(alpha=.6) + theme_wsj()
G1
G2 <- ggplot(DF3, aes(x=Time, y=Population, color=Generation, fill=Generation)) +
geom_area(alpha=.6) + theme_wsj()
G2 + scale_y_continuous(labels = comma)
install.packages("gtools")
library("gtools")
name <- c("A","B","C")
permutations(3,2,name)
permutations(3,2,name,repeats.allowed=T)
nrow(permutations(3,2,repeats.allowed=T))
combinations(3,2,name)
combinations(3,2,name,repeats.allowed=T)
dbinom(9,10000,0.0009)
a <- dgeom(1:10, 0.2)
a
sum(a[1:5])
runif(10)
runif(50, min=0, max=100)
rnorm(10, mean=100, sd=15)
rnorm(1000,mean=452,sd=80)
rbinom(100, size=1, prob=0.5)
rbinom(100, size=1, prob=1/6)
a <- rbinom(100, size=1, prob=1/6)
a[a==1] <- "성공"
a[a==0] <- "실패"
a
dnorm(15, mean=30, sd=7)
dnorm(450, mean=550, sd=80)
dbinom(490, size=1000, prob=0.5)
dbinom(50, size=1020, prob=0.25)
dgeom(3, prob=0.2)
pgeom(3, prob=0.2)
pnorm(235, mean=240, sd=80)
pnorm(370, mean=350, sd=75) - pnorm(200, mean=350, sd=75)
diff(pnorm(c(200,370), mean=350, sd=75))
pbinom(990, size=2000, prob=0.5)
pbinom(1550, size=2000, prob=0.78)
pbinom(1500, size=2000, prob=0.78) - pbinom(300, size=2000, prob=0.78)
diff(pbinom(c(300,1500),size=2000,prob=0.78))
x <- seq(from=0, to=100, by=1)
x
y <- dnorm(x, mean=50, sd=12)
y
plot(x,y,type="l")
x <- seq(from=0, to=100, by=1)
y <- dbinom(x, size=100, prob=0.5)
plot(x,y,type="l")
data <- rnorm(300, mean=70, sd=20)
Ddata <- density(data)
Ddata
plot(Ddata)
library("ggplot2")
DF <- data.frame(data)
DF
ggplot(DF, aes(x=data)) + geom_density()
library("ggthemes")
ggplot(DF,aes(x=data)) + geom_density(fill="skyblue2",colour="dodgerblue1",
alpha=0.4) + xlim(c(-10,140)) + theme_wsj()
CI <- qnorm(c(0.05,0.95), mean=623, sd=90)
CI
Sample <- read.csv("example_test_statistic_ex1_sample.csv")
head(Sample, 3)
Sample <- Sample[-1]
CI
mean(Sample$point)
Population <- read.csv("example_test_statistic_ex2_population.csv")
head(Population, 10)
Population <- Population[-1]
head(Population,2)
mean(Population$point)
sd(Population$point)
CI <- qnorm(c(0.05,0.95),mean=mean(Population$point),sd=sd(Population$point))
CI
Sample <- read.csv("example_test_statistic_ex2_sample.csv")
head(Sample,3)
CI
mean(Sample$point)
install.packages("multilinguer")
install.packages(c('stringr', 'hash', 'tau', 'Sejong', 'RSQLite', 'devtools'), type = "binary")
install.packages("remotes")
remotes::install_github('haven-jeon/KoNLP', upgrade = "never", INSTALL_opts=c("--no-multiarch"))
install.packages("readxl")
library(readxl)
ck <- read_xlsx("치킨집_가공.xlsx")
head(ck)
addr <- substr(ck$소재지전체주소, 11, 16)
head(addr)
addr_num <- gsub("[0-9]", "", addr)
addr_trim <- gsub(" ", "", addr_num)
head(addr_trim)
install.packages("dplyr")
library(dplyr)
addr_count <- addr_trim %>% table() %>% data.frame()
head(addr_count)
install.packages("treemap")
library(treemap)
treemap(addr_count,index=".",vSize="Freq",title="서대문구 동별 치킨집 분포")
arrange(addr_count,desc(Freq)) %>% head(17)
install.packages("multilinguer")
install.packages(c('stringr', 'hash', 'tau', 'Sejong', 'RSQLite', 'devtools'), type = "binary")
install.packages("remotes")
remotes::install_github('haven-jeon/KoNLP', upgrade = "never", INSTALL_opts=c("--no-multiarch"))
library(multilinguer)
library(KoNLP)
devtools::install_github('haven-jeon/NIADic/NIADic',build_vignettes=TRUE)
Sys.setenv(JAVA_HOME='c:/Java/jdk1.8.0_191')
buildDictionary(ext_dic = "woorimalsam")
useNIADic()
txt <- readLines("hiphop.txt")
head(txt)
library(stringr)
txt <- str_replace_all(txt, "\\W", " ")
extractNoun("대한민국 영토는 한반도와 그 부속도서로 한다")
nouns <- extractNoun(txt)
wordcount <- table(unlist(nouns))
library(dplyr)
df_word <- as.data.frame(wordcount, stringsAsFactors = F)
df_word <- rename(df_word,word = Var1,freq = Freq)
df_word <- filter(df_word, nchar(word) >= 2)
top_20 <- df_word %>%
arrange(desc(freq)) %>%
head(20)
top_20
install.packages("wordcloud")
library(wordcloud)
library(RColorBrewer)
pal <- brewer.pal(8,"Dark2")
set.seed(1234)


wordcloud(word = df_word$word,
freq = df_word$freq,
min.freq = 2,
max.words = 200,
random.order = F,
rot.per = .1,
scale = c(4, 0.3),
colors = pal)


pal <- brewer.pal(9,"Blues")[5:9]
set.seed(1234)


wordcloud(word = df_word$word,
freq = df_word$freq,
min.freq = 2,
max.words = 200,
random.order = F,
rot.per = .1,
scale = c(4, 0.3),
colors = pal)


library(KoNLP)
library(dplyr)
library(wordcloud)
library(RColorBrewer)
twitter <- read.csv("twitter.csv",
header = T,
stringsAsFactors = F,
fileEncoding = "UTF-8")

twitter <- rename(twitter,
no = 번호,
id = 계정이름,
date = 작성일,
tw = 내용)

head(twitter$tw)

nouns <- extractNoun(twitter$tw)

wordcount <- table(unlist(nouns))

df_word <- as.data.frame(wordcount, stringsAsFactors = F)

df_word <- rename(df_word,
word = Var1,
freq = Freq)

df_word <- filter(df_word, nchar(word) >= 2)

top20 <- df_word %>%
arrange(desc(freq)) %>%
head(20)

top20

library(ggplot2)
order <- arrange(top20, freq)$word
ggplot(data = top20, aes(x= word, y = freq)) +
ylim(0, 2500) +
geom_col() +
coord_flip() +
scale_x_discrete(limit = order) +
geom_text(aes(label = freq), hjust = -0.3)

pal <- brewer.pal(8, "Dark2")
set.seed(1234)

wordcloud(word = df_word$word,
freq = df_word$freq,
min.freq = 10,
max.words = 200,
random.order = F,
rot.per = .1,
scale = c(10, 0.5),
colors = pal)

pal <- brewer.pal(9, "Blues")[5:9]
set.seed(1234)

wordcloud(word = df_word$word,
freq = df_word$freq,
min.freq = 10,
max.words = 200,
random.order = F,
rot.per = .1,
scale = c(10, 0.5),
colors = pal)


install.packages("wordcloud2")
library(KoNLP)
library(wordcloud2)

useSystemDic()
useSejongDic()
useNIADic()

word_data <- readLines("애국가(가사).txt")
word_data

word_data2 <- sapply(word_data, extractNoun, USE.NAMES = F)
word_data2
add_words <- c("백두산", "남산", "철갑", "가을", "하늘")
buildDictionary(user_dic = data.frame(add_words, rep("ncn",length(add_words))),
replace_usr_dic = T)

word_data2 <- sapply(word_data, extractNoun, USE.NAMES = F)
word_data2

undata <- unlist(word_data2)
undata

word_table <- table(undata)
word_table

undata2 <- Filter(function(x){nchar(x)>=2}, undata)
word_table2 <- table(undata2)
word_table2

sort(word_table2, decreasing = T)

wordcloud2(word_table2)
wordcloud2(word_table2, color = "random-light", backgroundColor = "black")
wordcloud2(word_table2, fontFamily = "맑은 고딕", size = 1.2, color = "random-light", backgroundColor = "black", shape = "star")













