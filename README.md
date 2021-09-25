#  MechaCar_Statistical_Analysis

##  Linear Regression to Predict MPG (Deliverable One)

![15 deliv1a](https://user-images.githubusercontent.com/85403978/134778479-b24156fb-f05b-41da-bfb2-e81cb5433fc6.png)

**1.) Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**\
Using 0.05 as the standard, vehicle_weight, spoiler_angle, and AWD provided a non-random amount of variance.

**2.) Is the slope of the linear model considered to be zero? Why or why not?**\
The p-value is 5.35e-11 the slope would not be zero.

**3.) Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**\
"To quantify how well our linear model can be used to predict future observations, our linear regression functions will calculate an r-squared value. The r-squared (r2) value is also known as the coefficient of determination and represents how well the regression model approximates real-world data points. In most cases, the r-squared value will range between 0 and 1 and can be used as a probability metric to determine the likelihood that future data points will fit the linear model."
The R squared value in this case is 0.7149 which means that roughly 72% of the time, the predictions will be correct.

##  Summary Statistics on Suspension Coils (Deliverable Two)

![15 deliv 2a](https://user-images.githubusercontent.com/85403978/134778629-4d795bdf-d0b0-4a11-916d-6b49d3d311f4.png)

![15 Deliv 2](https://user-images.githubusercontent.com/85403978/134778645-4fe48ba0-0ac8-45b3-ab7d-c659baf5ad12.png)


**1.) The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?**\
As the data shows in the table above, the variance of Lot 3 requires attention.  With a varience of 170, this Lot may exceed specifications and needs to be addressed.

##  T_Tests on Suspension Coils (Deliverable Three)
![15 deliv3](https://user-images.githubusercontent.com/85403978/134779539-fe50b452-aa69-4312-89a9-b3a13f2457f5.png)

![15 deliv 3a](https://user-images.githubusercontent.com/85403978/134779548-1cacadad-32d4-4725-ab1f-aae57638e4f9.png)

Once again, Lot 3 needs to be reviewed.  Considering a p-value of 0.05 or above being the standard, Lot 3 falls below with a p-value of 0.04168.  Also, the mean of Lot 3 is the furthest from the standard of 1500 compared to the means of the other two lots.

##  Study Design: MechaCar vs Competition (Deliverable 4)
When considering the sales features of the MechaCar versus the competition, the company should consider the factors that are of most consern to the customer, namely cost, city & highway fuel efficency, horse power, maintenance costs, and saftey rating.  To do so, the company could compile the data related to similar cars from the competition that would be considered in the same class as the MechaCar.  Once that data is compiled, the company could use an ANOVA test to compare these various features within the MechaCar to the results of the other vehicles.  Using the p value as the benchmark, the company could see areas where the p-value of the MechaCar is less than 0.05 and make adjustments to that specific category to eventually supersede the competition and make the MechaCar a better value to the customer.
