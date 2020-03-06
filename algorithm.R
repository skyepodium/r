a = 1
a <- 1
a
a <- 2
a

a != 1
a > 1

a <- "abc"
abc <- 2
abc
a <- abc
a
class(a)
class(abc)

a <- as.character(a)
a
class(a)

# vector = column
# () <- 함수를 의미함
# [] <- 을 통해서 원소에 접근한다.
a <- c(50, 20, 30)
a[1]
a[2]
a[3]

b <- c(1, 2, 3)
a + b
a + 1
b * 2

a <- c("aa", "bb", "cc")
a[1] # 하나의 값을 가져올때는 인덱스로 가져온다.
a[c(1, 2)]
a[c(1, 3)]
a[c(3, 2, 1)]
a[1:3] # ~부터 ~까지, :는 하나의 벡터를 만든다.
a[-1]
a[-3]
a[-c(1, 3)]
a[-c(1:2)]


a[c(T, T, F)] # True 위치에 있는것을 가져온다.

a[a == "aa"]

a <- 1:100 # a에 1부터 100까지 넣는다.
a
a %% 2 # 나머지 구하는 연산

a[a %% 2 == 0] # 짝수만 가져온다.
a[a %% 2 == 1] # 홀수만 가져온다.





c(2, 4, 6, 8) + c(1, 3, 5, 7, 9)

z = c(1:3, NA)
z
is.na(z)
z == NA

c(1, 1, 1, 2) == 2


c(1, 1, 1, NA) == NA
matrix(1:15, ncol=3)

matrix(1:15, ncol=3, byrow = T) # 행부터 넣는다.

? matrix

mdat <- matrix(c(1,2,3, 11,12,13), nrow = 2, ncol = 3, byrow = TRUE,
               dimnames = list(c("row1", "row2"),
                               c("C.1", "C.2", "C.3")))
mdat

m <- matrix(1:15, ncol=3, byrow = T)

m[2,2] # matrix에서 2,2에 접근

m[1,c(1, 2, 3)] # 첫번째 행에 접근
m[1,] # 비워두는것은 모든것을 의미한다.

# , 기준으로 해서 앞에는 행에 대한 정보 / 뒤에는 열에 대한 정보

m[,1]
m[-1,]
m[,-1]
m[c(1, 3), ]
m
m[-c(1, 3),]
m[2:4, c(2, 3)]


m2 <- data.frame(m)
m2


m[,1] <- as.character(m[,1])
m
m2
str(m2) # str structure의 약자 데이터 프레임의 구조를 보여준다.

m2[,1] <- as.character(m2[,1])
str(m2)
m2

# 메트릭스는 각각의 칼럼이 다 똑같은 자료형이어야한다.
# 데이터 프레임은 각각의 칼럼이 다른 자료형 이어도 된다.

m2
m3 <- as.numeric(as.matrix(m2))

m2[,1]

m2$X1
m2$x4 <- c(1, 2, 3, 4, 5)
m2
sex <- c("남", "여", "여", "남")
sex
sex2 <-ifelse(sex=="남", 1, 0)
sex2


m2

cbind(m2, c(3, 2, 4, 5, 5)) #column을 묶어주는 명령
rbind(m2, c(3, 2, 4, 5)) #row을 묶어준다.

cbind(m2, m2)
rbind(m2, m2)

# for 문
for(i in 1:10){
  print(i)
}

for(j in c(1, 3, 5, 7)){
  print(j)
}

for(j in c(7, 5, 3, 1)){
  print(j)
}

m2

m3<-NULL
for(i in 1:10) {
  m3 <- rbind(m3,m2)
  print(i)
  print(dim(m3))
}

m2

dim(m3)


# if 문

m3<-NULL
for(i in 1:10) {
  if(i %% 2 == 0){
    # next;
  }else{
    m3 <- rbind(m3,m2)
  }
  cat("\n", i)
}
dim(m3)



#while
i<-1
while(i<100) {
  if( i > 50) {
    break;
  }
  print(i)
  i <- i+1
}

i<-100
while(i>0.01){
  i<- i-runif(1, min=-0.001, max=0.01)
  cat("\n", i)  
}

m <- matrix(1:15, ncol=3, byrow = T)
m2 <- data.frame(m)
m2
colnames(m2) <- paste0("v", 1:3)
m2

getwd() # 현재 작업공간을 불러온다.working directory
setwd("/Users/skyepodium/dev/r/input") # 작업공간을 설정한다.
getwd()

write.csv(m2, "m2.csv", row.names=F) # row name을 지우고 저장한다.
aaa <- read.csv("m2.csv")

rownames(m2)
aaa

save(m2, file="m2.RData")
load("m2.RData")
m2

lista <- list()
lista
lista[[1]] <- m2
lista

lista[[2]] <- c(1, 2, 3)
lista[[3]] <- c("a", "b", "c")

lista
lista[[2]][1] # 리스트 두번째의 첫번째 방의 요소를 가져온다.

aa <- lista[[1]]
aa[1,]

save(lista, file="lista.RData") # csv로 저장할 수 없다.
lista
load("lista.RData")

m <- matrix(1:15, ncol=3, byrow=T)
m[,1] <- as.character(m[,1])
m<-data.frame(m)
str(m)
m[,1] <- as.numeric(m[,1])
str(m)
m[,2] <- as.numeric(m[,2])
m[,3] <- as.numeric(m[,3])

for(i in 1:ncol(m)) {
  m[,i] <- as.numeric(m[,i])
}

str(m)


# r plot -> ggplot
plot(1)

plot(m)
cor(m) # correlation matrix 만든다.

b <- rnorm(100) # 표준 정규분포를 따르는 변수 100개 랜덤 생성

plot(rnorm(100))
hist(b)

data <- cbind(rnorm(100), rnorm(100), rnorm(100))
data
cor(data)
plot(data.frame(data))
plot(data[,3])
ts.plot(data[,3])
ts.plot(data, col=c('red', 'blue', 'black'))



data2 <- data.frame(data)
head(data2)

fit <- lm(X3~., data=data2)
sum((fit$residuals)^2) # sum of squares error SSE

sse <- sum((fit$residuals)^2) # sum of squares error SSE
for(i in 1:30){
  data2 <- cbind(data2, rnorm(100))
  colnames(data2) <- paste0("X", 1:ncol(data2))
  fit<-lm(X1~., data=data2)
  
  sse <- c(sse, sum((fit$residuals)^2)) # sum of squares error SSE
  ts.plot(sse)
  Sys.sleep(0.1)
}


ab <- 1
ab
ab <- 1:4

? matrix

ab <- matrix(1:15, ncol=3, byrow=TRUE)
ab
? plot
? boxplot
boxplot(ab)
plot(ab[,2], ab[,3])


is.na(ab)

ab

for(i in ab){
  print(i)        
}