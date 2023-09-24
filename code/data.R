rm(list=ls(all=TRUE)) 

cat("\014")

hoteles <- read.csv ("C:/Users/CarpeDiem/Desktop/datasciencie/hotel_bookings2.csv ", header = TRUE, sep = ",")

head(hoteles)


setwd("C:/Users/CarpeDiem/Desktop/datasciencie/scritps")

hoteles_data<-read.csv('hotel_bookings.csv', header=TRUE, stringsAsFactors = FALSE,sep=',',dec='.')
View(hoteles_data)



head(hoteles_data)
head(hoteles_data,10)

tail(hotehoteles_datales_data)
tail(hoteles_data,15)

names(hoteles_data)
View(hoteles_data)

head(hoteles_data)
tail(hoteles_data)
summary(hoteles_data)
str(hoteles_data)
dim(hoteles_data)
nrow(hoteles_data)
ncol(hoteles_data)
colnames(hoteles_data)
names(hoteles_data)

hoteles_data[,"hotel"]

hoteles <- unique(hoteles_data$hotel)
print(hoteles)

reservas_por_hotel <- aggregate(cbind(total_reservas = adults + babies + children) ~ hotel, data = hoteles_data, sum)

print(reservas_por_hotel)

sapply(hoteles_data, class)


######################################
data <- read.csv("hotel_bookings.csv", na.strings = "" )
head(data)

data.limpia <- na.omit(data)
View(data.limpia)
is.na(data$agent)


data.income.limpio <- data[!is.na(data$company),]

data$lead_time[data$lead_time == 0]
View(data)

mean(data$company, na.rm=TRUE)

#####
data <- read.csv("hotel_bookings.csv", na.strings = "NULL" )#guardamos el dataframe en data
head(data)


data.limpia <- na.omit(data)#limpiamos los NA 

View(data.limpia)#imprime los df sin valores na

is.na(data[1,24])#preguntamos al data si la fila uno de la columna 24 si es NA

is.na(data$agent)#preguntamos si hay valores NA en la columna llamada agent

data.agent.limpio <- data[!is.na(data$agente),]
View(data)

dataLimpio <- unique(data.limpia)

complete.cases(data)
data.limpia2 <- data[complete.cases(data),]
View(data.limpia2)


data$lead_time[data$lead_time == 0]
data$lead_time[data$lead_time == 0] <- NA
View(data)


is.na(hoteles_data)
is.na(data[1,23])
View(hoteles_data)
is.na(hoteles_data$agent)

ruta <- "C:/Users/CarpeDiem/Desktop/datasciencie/scritps/datoslimpios"
write.csv(data.limpia, file = "C:/Users/CarpeDiem/Desktop/datasciencie/scritps/datoslimpios", row.names = FALSE)
