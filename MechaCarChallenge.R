library(dplyr)
library(tidyverse)

# Deliverable 1: Linear Regression to Predict MPG (30 points)
MechaCar_mpg <- read_csv("MechaCar_mpg.csv")
head(MechaCar_mpg.csv)
summary(lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
    ground_clearance + AWD, data = MechaCar_mpg))

# Deliverable 2: Create Visualizations for the Trip Analysis (30 points)
Suspension_Coil <- read_csv("Suspension_Coil.csv")
head(Suspension_Coil)
summarize(Suspension_Coil)
summarize_suspension_coil <- Suspension_Coil %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Var_PSI=var(PSI), SD_PSI=sd(PSI))
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Var_PSI=var(PSI), SD_PSI=sd(PSI))
head(lot_summary)


#Deliverable 3: T-Tests on Suspension Coils (20 points)

t.test(Suspension_Coil$PSI,mu=1500)
Lot1 <- subset(Suspension_Coil,Manufacturing_Lot=="Lot1")
t.test(Lot1$PSI,mu=1500)
Lot2 <- subset(Suspension_Coil,Manufacturing_Lot=="Lot2")
t.test(Lot1$PSI,mu=1500)
Lot3 <- subset(Suspension_Coil,Manufacturing_Lot=="Lot3")
t.test(Lot1$PSI,mu=1500)

