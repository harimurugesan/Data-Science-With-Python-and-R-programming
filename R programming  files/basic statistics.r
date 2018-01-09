data <- tips
data
plot(tip ~ total_bill,data = data)
airquality
mean.tip <- mean(data$tip)
mean.tip
abline(h = mean.tip)
model1 <- lm(Ozone ~ Solar.R,data = airquality)
model1
model2 <- lm(tip ~ total_bill,data = tips)
model2
abline(model2)
plot(model2)

termplot(model1)
termplot(model2)
summary(model1)
summary(model2)
