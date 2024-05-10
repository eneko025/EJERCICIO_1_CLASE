library(readxl)
library(dplyr)
df <- read_excel("C:/Users/eruiz/EJERCICIO_1_CLASE/datos/online_retail_II.xlsx")
View(df)


str(df)
summary(df)

pedidos_unicos <- length(unique(df$Invoice))

#10
ejercicio<-df %>%
  group_by(Invoice)%>%
  summarise(precio_medio=mean(Price))
