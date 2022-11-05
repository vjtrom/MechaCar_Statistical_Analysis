# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
![](https://github.com/vjtrom/MechaCar_Statistical_Analysis/blob/main/images/LM%20MechaCar_mpg.jpg)

**Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**
 - According to our results, vehicle_length and ground_clearance (as well as intercept) are statistically unlikely to provide random amounts of variance to the linear model. 

**Is the slope of the linear model considered to be zero? Why or why not?**
- No, because some of the variables such as vehicle_length, ground clearance and AWD have a beta coefficient greater or less than zero

**Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**
- Yes, becuase the Multiple-Squared and Adusted R-Squared are 71% and 68% respectively, meaning the model is predictive

## Summary Statistics on Suspension Coils
![](https://github.com/vjtrom/MechaCar_Statistical_Analysis/blob/main/images/Summarize_Suspension_Coil.jpg)

![](https://github.com/vjtrom/MechaCar_Statistical_Analysis/blob/main/images/lot_summary.jpg)

**The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?**
- The current manufacturing data does meet this design specification for all manufacturing Lots, since the total variance is 62.295. It also meets the design specification for Lots 1 and 2, however, it does not meet the specification for Lot 3, which has a PSI variance of 170.286. 

## T-Tests on Suspension Coils

![](https://github.com/vjtrom/MechaCar_Statistical_Analysis/blob/main/images/One-Sample_T-test.jpg)

**briefly summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.**
- Based on the t test that compares PSI across all manufacturing lots, the alternative hypothesis is true because the mean of the lots is not equal to the population mean of 1498.78.
