library(dplyr)
df <- read.csv('MechaCar_mpg.csv')
model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, df)
summary(model)

table <- read.csv('Suspension_Coil.csv')
total_summary <- table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
lot_summary <- table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')

t.test(table$PSI,mu=1500)
t.test(subset(table$PSI,table$Manufacturing_Lot=="Lot1"),mu=1500)
t.test(subset(table$PSI,table$Manufacturing_Lot=="Lot2"),mu=1500)
t.test(subset(table$PSI,table$Manufacturing_Lot=="Lot3"),mu=1500)


