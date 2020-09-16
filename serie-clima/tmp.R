# library(ggplot2)
# library(data.table)
# library(lubridate)
# library(Amelia)
# library(RColorBrewer)
# library(scales)
# library(ggthemes)
# library(xkcd)
# library(openair)
# library(readr)

new2019 <- read.csv2("2019.txt", header = FALSE, sep = ",", dec = ".")

new2019$Temperatura <- as.numeric(new2019$V2)
new2019$Umidità <- as.numeric(new2019$V3)
new2019$Precipitazioni <- as.numeric(new2019$V4)
new2019$Data <- as.POSIXct(new2019$V1, format="%Y-%m-%d %H:%M:%S")

new2019$hour <- cut(new2019$Data, breaks = "hour")

cut(new2019$Data, breaks = "hour")
cut(new2019$Data, breaks = "day")
cut(new2019$Data, breaks = "month")


getmeans  <- function(df) c(Temperatura = mean(df$Temperatura), 
                            Umidità = mean(df$Umidità),
                            Precipitazioni = mean(df$Precipitazioni), 
                            Pressione = mean(df$V5))


library(plyr)
df <- ddply(new2019, .(hour), getmeans)
df$Data <- as.POSIXct(df$hour, tz = "GMT")

date_format <- function(format = "%d") {
  function(x) format(x, format)
}

df$Month <- format(df$Data, '%m')
df$Day <- format(df$Data, '%d')
df$Month <- as.factor(df$Month)

Month.labs <- c("Gennaio", "Febbraio", "Marzo", "Aprile", "Maggio", "Giugno", "Luglio", "Agosto", "Settembre", "Ottobre", "Novembre", "Dicembre")
names(Month.labs) <- c("01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12")


ggplot(df, aes(Data, Temperatura, color = Temperatura)) + geom_line() +  theme_bw() +
  geom_smooth(method = lm, formula = y ~ splines::bs(x, 15), se = FALSE, size = 0.3) +
  scale_x_datetime(labels = date_format(), date_breaks = "2 day") +
  facet_wrap(~ Month, ncol = 3, scales = 'free_x',   labeller = labeller(Month = Month.labs)) +
  scale_colour_gradient2(low = "dodgerblue", high = "red", mid = "green", midpoint = 20) +
  theme(axis.text.x = element_text(size = rel(0.8))) + 
  ggtitle("Temperatura") +
  ylab("") + xlab("") + theme(legend.position="none")
