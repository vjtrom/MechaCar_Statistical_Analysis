library(dplyr)
library(tidyverse)
MechaCar_mpg <- read_csv("MechaCar_mpg.csv")
head(MechaCar_mpg)
summary(lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
    ground_clearance + AWD, data = MechaCar_mpg))
