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
lots <- Suspension_Coil %>% group_by(Manufacturing_Lot)
head(lots)
t.test(lots$PSI,mu=mean(Suspension_Coil$PSI))
t.test(lots$PSI,mu=mean(Suspension_Coil$PSI),subset=(Manufactoring_Lot=Lot1))
t.test(lots$PSI,mu=mean(Suspension_Coil$PSI),subset=(Manufactoring_Lot=Lot2))
t.test(lots$PSI,mu=mean(Suspension_Coil$PSI),subset=(Manufactoring_Lot=Lot3))