library(dplyr)
df <- read.csv('MechaCar_mpg.csv')
model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, df)
summary(model)
