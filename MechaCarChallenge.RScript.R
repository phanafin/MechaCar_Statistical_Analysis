R version 4.1.1 (2021-08-10) -- "Kick Things"
Copyright (C) 2021 The R Foundation for Statistical Computing
Platform: x86_64-apple-darwin17.0 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> ?read.csv()
> wd
Error: object 'wd' not found
> pwd
Error: object 'pwd' not found
> getwd()
[1] "/Users/pathanafin"
> cd Desktop
Error: unexpected symbol in "cd Desktop"
> demo_table <- read.csv(file='demo.csv',check.names,stringsAsFactors = F)
Error in file(file, "rt") : cannot open the connection
In addition: Warning message:
  In file(file, "rt") :
  cannot open file 'demo.csv': No such file or directory
> getwd()
[1] "/Users/pathanafin"
> demo_table <- read.csv(file='demo.csv',check.names=F,stringsAsFactors = F)
Error in file(file, "rt") : cannot open the connection
In addition: Warning message:
  In file(file, "rt") :
  cannot open file 'demo.csv': No such file or directory
> demo_table <- read.csv(file='pathanafin$demo.csv',check.names=F,stringsAsFactors = F)
Error in file(file, "rt") : cannot open the connection
In addition: Warning message:
  In file(file, "rt") :
  cannot open file 'pathanafin$demo.csv': No such file or directory
> demo_table <- read.csv(file='R_Analysis.demo.csv',check.names=F,stringsAsFactors = F)
Error in file(file, "rt") : cannot open the connection
In addition: Warning message:
  In file(file, "rt") :
  cannot open file 'R_Analysis.demo.csv': No such file or directory
> demo_table <- read.csv(file='./.demo.csv',check.names=F,stringsAsFactors = F)
Error in file(file, "rt") : cannot open the connection
In addition: Warning message:
  In file(file, "rt") :
  cannot open file './.demo.csv': No such file or directory
> getwd()
[1] "/Users/pathanafin"
> setwd("~/Desktop/Class_Folder/R_Analysis")
> demo_table <- read.csv(file='demo.csv',check.names=F,stringsAsFactors = F)
> View(demo_table)
> 
  > 
  > View(demo_table)
> 
  > library(jsonlite)
> library(jsonlite)
> ?fromJSON()
> demo_table2 <- fromJSON(txt='demo.json')
> View(demo_table2)
> > demo_table[3,"Year"]
Error: unexpected '>' in ">"
> demo_table[3,"Year"]
[1] 2019
> demo_table[3,3]
[1] 2019
> demo_table$"Vehicle_Class"
[1] "Compact_Sedan"    "Pickup"           "SUV"              "Subcompact_Sedan"
> demo_table$"Vehicle_Class"[2]
[1] "Pickup"
> View(demo_table2)
> > filter_table <- demo_table2[demo_table2$price > 10000,]
Error: unexpected '>' in ">"
> filter_table <- demo_table2[demo_table2$price > 10000,]
> View(filter_table)
> ?subset()
> filter_table2 <- subset(demo_table2, price > 10000 & drive == "4wd" & "clean" %in% title_status) #filter by price and drivetrain
> View(filter_table2)
> ?sample()
> sample(c("cow", "deer", "pig", "chicken", "duck", "sheep", "dog"), 4)
[1] "duck" "deer" "dog"  "cow" 
> num_rows <- 1:nrow(demo_table)
> sample_rows <- sample(num_rows, 3)
> View(demo_table)
> sample_rows <- sample(num_rows, 3)
> demo_table[sample_rows,]
Name    Vehicle_Class Year Total_Miles
4  Kerri Subcompact_Sedan 2018       12349
1   John    Compact_Sedan 2012       87456
3 Xavier              SUV 2019        4532
> demo_table[sample(1:nrow(demo_table), 3),]
Name    Vehicle_Class Year Total_Miles
3 Xavier              SUV 2019        4532
2 Claire           Pickup 2017       15022
4  Kerri Subcompact_Sedan 2018       12349
> library(tidyverse)
── Attaching packages ───────────────────────────────────────── tidyverse 1.3.1 ──
✓ ggplot2 3.3.5     ✓ purrr   0.3.4
✓ tibble  3.1.4     ✓ dplyr   1.0.7
✓ tidyr   1.1.3     ✓ stringr 1.4.0
✓ readr   2.0.1     ✓ forcats 0.5.1
── Conflicts ──────────────────────────────────────────── tidyverse_conflicts() ──
x dplyr::filter()  masks stats::filter()
x purrr::flatten() masks jsonlite::flatten()
x dplyr::lag()     masks stats::lag()
> ?mutate()
> View(demo_table)
> demo_table <- demo_table %>% mutate(Mileage_per_Year=Total_Miles/(2020-Year),IsActive=TRUE) #add columns to original data frame
> summarize_demo <- demo_table2 %>% group_by(condition) %>% summarize(Mean_Mileage=mean(odometer), .groups = 'keep') #create summary table
> View(summarize_demo)
> View(demo_table2)
> View(summarize_demo)
> View(demo_table2)
> summarize_demo <- demo_table2 %>% group_by(condition) %>% summarize(Mean_Mileage=mean(odometer),Maximum_Price=max(price),Num_Vehicles=n(), .groups = 'keep') #create summary table with multiple columns
> View(summarize_demo)
> ?gather()
> demo_table3 <- read.csv('demo2.csv',check.names = F,stringsAsFactors = F)
> View(demo_table3)
> demo_table4 <- read.csv(Vehicle_Data.xlsx, check.names = F,stringsAsFactors = F)
Error in read.table(file = file, header = header, sep = sep, quote = quote,  : 
                      object 'Vehicle_Data.xlsx' not found
                    > long_table <- gather(demo_table3,key="Metric",value="Score",buying_price:popularity)
                    > View(long_table)
                    > long_table <- demo_table3 %>% gather(key="Metric",value="Score",buying_price:popularity)
                    > ?spread()
                    > wide_table <- long_table %>% spread(key="Metric",value="Score")
                    > View(wide_table)
                    > View(demo_table3)
                    > View(wide_table)
                    > all.equal(demo_table3,wide_table)
                    [1] "Names: 7 string mismatches"                      
                    [2] "Component 2: Mean relative difference: 0.5808824"
                    [3] "Component 3: Mean relative difference: 0.8276762"
                    [4] "Component 4: Mean relative difference: 0.5555556"
                    [5] "Component 5: Mean relative difference: 0.4978166"
                    [6] "Component 6: Mean relative difference: 0.4863636"
                    [7] "Component 7: Mean relative difference: 1.818182" 
                    [8] "Component 8: Mean relative difference: 0.5152355"
                    > table <-demo_table3[,order(colnames(wide_table))]
                    > View(table)
                    > View(filter_table)
                    > ?ggplot()
                    > head(mpg)
                    # A tibble: 6 × 11
                    manufacturer model displ  year   cyl trans      drv     cty   hwy fl    class  
                    <chr>        <chr> <dbl> <int> <int> <chr>      <chr> <int> <int> <chr> <chr>  
                      1 audi         a4      1.8  1999     4 auto(l5)   f        18    29 p     compact
                    2 audi         a4      1.8  1999     4 manual(m5) f        21    29 p     compact
                    3 audi         a4      2    2008     4 manual(m6) f        20    31 p     compact
                    4 audi         a4      2    2008     4 auto(av)   f        21    30 p     compact
                    5 audi         a4      2.8  1999     6 auto(l5)   f        16    26 p     compact
                    6 audi         a4      2.8  1999     6 manual(m5) f        18    26 p     compact
                    > plt <- ggplot(mpg,aes(x=class)) #import dataset into ggplot2
                    > plt + geom_bar() #plot a bar plot
                    > ?geom_bar()
                    > mpg_summary <- mpg %>% group_by(manufacturer) %>% summarize(Vehicle_Count=n(), .groups = 'keep') #create summary table
                    > plt <- ggplot(mpg_summary,aes(x=manufacturer,y=Vehicle_Count)) #import dataset into ggplot2
                    > plt + geom_col() #plot a bar plot
                    > plt + geom_col() + xlab("Manufacturing Company") + ylab("Number of Vehicles in Dataset") #plot bar plot with labels
                    > plt + geom_col() + xlab("Manufacturing Company") + ylab("Number of Vehicles in Dataset") + #plot a boxplot with labels
                      + theme(axis.text.x=element_text(angle=45,hjust=1)) #rotate the x-axis label 45 degrees
                    > mpg_summary <- subset(mpg,manufacturer=="toyota") %>% group_by(cyl) %>% summarize(Mean_Hwy=mean(hwy), .groups = 'keep') #create summary table
                    > plt <- ggplot(mpg_summary,aes(x=cyl,y=Mean_Hwy)) #import dataset into ggplot2
                    > View(mpg_summary)
                    > plt + geom_line()
                    > plt + geom_line() + scale_x_discrete(limits=c(4,6,8)) + scale_y_continuous(breaks = c(15:30)) #add line plot with labels
                    Warning message:
                      Continuous limits supplied to discrete scale.
                    Did you mean `limits = factor(...)` or `scale_*_continuous()`? 
                      > plt <- ggplot(mpg,aes(x=displ,y=cty)) #import dataset into ggplot2
                    > plt + geom_point() + xlab("Engine Size (L)") + ylab("City Fuel-Efficiency (MPG)") #add scatter plot with labels
                    > plt <- ggplot(mpg,aes(x=displ,y=cty,color=class)) #import dataset into ggplot2
                    > plt + geom_point() + labs(x="Engine Size (L)", y="City Fuel-Efficiency (MPG)", color="Vehicle Class") #add scatter plot with labels
                    > plt <- ggplot(mpg,aes(x=displ,y=cty,color=class,shape=drv)) #import dataset into ggplot2
                    > plt + geom_point() + labs(x="Engine Size (L)", y="City Fuel-Efficiency (MPG)", color="Vehicle Class",shape="Type of Drive") #add scatter plot with multiple aesthetics
                    > plt <- ggplot(mpg,aes(y=hwy)) #import dataset into ggplot2
                    > plt + geom_boxplot() #add boxplot
                    > plt <- ggplot(mpg,aes(x=manufacturer,y=hwy)) #import dataset into ggplot2
                    > plt + geom_boxplot() + theme(axis.text.x=element_text(angle=45,hjust=1)) #add boxplot and rotate x-axis labels 45 degrees
                    > plt + geom_boxplot(fill = "white", color = "#3366FF")
                    > plt + geom_boxplot(+ theme(axis.text.x=element_text(angle=45,hjust=1)))
                    Error: Cannot use `+.gg()` with a single argument. Did you accidentally put + on a new line?
                      Run `rlang::last_error()` to see where the error occurred.
                    > plt + geom_boxplot(theme(axis.text.x=element_text(angle=45,hjust=1)))
                    Error: `mapping` must be created by `aes()`
                    Run `rlang::last_error()` to see where the error occurred.
                    > plt + geom_boxplot(axis.text.x=element_text(angle=45,hjust=1))
                    Warning message:
                      Ignoring unknown parameters: axis.text.x 
                    > plt + geom_boxplot(fill = "white", color = "#3366FF", angle=45, hjust=1)
                    Warning message:
                      Ignoring unknown parameters: angle, hjust 
                    > mpg_summary <- mpg %>% group_by(class,year) %>% summarize(Mean_Hwy=mean(hwy), .groups = 'keep') #create summary table
                    > plt <- ggplot(mpg_summary, aes(x=class,y=factor(year),fill=Mean_Hwy))
                    > plt + geom_tile() + labs(x="Vehicle Class",y="Vehicle Year",fill="Mean Highway (MPG)") #create heatmap with labels
                    > > mpg_summary <- mpg %>% group_by(model,year) %>% summarize(Mean_Hwy=mean(hwy), .groups = 'keep') #create summary table
                    Error: unexpected '>' in ">"
                    > > plt <- ggplot(mpg_summary, aes(x=model,y=factor(year),fill=Mean_Hwy)) #import dataset into ggplot2
                    Error: unexpected '>' in ">"
                    > > plt + geom_tile() + labs(x="Model",y="Vehicle Year",fill="Mean Highway (MPG)") + #add heatmap with labels > theme(axis.text.x = element_text(angle=90,hjust=1,vjust=.5)) #rotate x-axis labels 90 degrees
                      Error: unexpected '>' in ">"
                    > mpg_summary <- mpg %>% group_by(model,year) %>% summarize(Mean_Hwy=mean(hwy), .groups = 'keep') #create summary table
                    > plt <- ggplot(mpg_summary, aes(x=model,y=factor(year),fill=Mean_Hwy)) #import dataset into ggplot2
                    > plt + geom_tile() + labs(x="Model",y="Vehicle Year",fill="Mean Highway (MPG)") + #add heatmap with labels > theme(axis.text.x = element_text(angle=90,hjust=1,vjust=.5)) #rotate x-axis labels 90 degrees
                      + 
                      + plt + geom_tile() + labs(x="Model",y="Vehicle Year",fill="Mean Highway (MPG)")  #add heatmap with labels > theme(axis.text.x = element_text(angle=90,hjust=1,vjust=.5)) #rotate x-axis labels 90 degrees
                    Error: Can't add `plt` to a ggplot object.
Run `rlang::last_error()` to see where the error occurred.
> mpg_summary <- mpg %>% group_by(model,year) %>% summarize(Mean_Hwy=mean(hwy), .groups = 'keep') + #create summary tableplt <- ggplot(mpg_summary, aes(x=model,y=factor(year),fill=Mean_Hwy)) #import dataset into ggplot2
+ > plt + geom_tile() + labs(x="Model",y="Vehicle Year",fill="Mean Highway (MPG)") + #add heatmap with labels > theme(axis.text.x = element_text(angle=90,hjust=1,vjust=.5)) #rotate x-axis labels 90 degrees
Error: unexpected '>' in:
"mpg_summary <- mpg %>% group_by(model,year) %>% summarize(Mean_Hwy=mean(hwy), .groups = 'keep') + #create summary tableplt <- ggplot(mpg_summary, aes(x=model,y=factor(year),fill=Mean_Hwy)) #im
>"
> mpg_summary <- mpg %>% group_by(model,year) %>% summarize(Mean_Hwy=mean(hwy), .groups = 'keep')
> plt <- ggplot(mpg_summary, aes(x=model,y=factor(year),fill=Mean_Hwy))
> plt + geom_tile() + labs(x="Model",y+"Vehicle Year",fill="Mean Highway (MPG)")
Error in dots_list(..., title = title, subtitle = subtitle, caption = caption,  : 
  object 'y' not found
> plt + geom_tile() + labs(x="Model",y+"Vehicle Year",fill="Mean Highway (MPG)")+
+ theme(axis.text.x = element_text(angle=90,hjust=1,vjust=.5))
Error in dots_list(..., title = title, subtitle = subtitle, caption = caption,  : 
  object 'y' not found
> plt <- ggplot(mpg,aes(x=manufacturer,y=hwy)) #import dataset into ggplot2
> plt + geom_boxplot() + #add boxplot
+ theme(axis.text.x=element_text(angle=45,hjust=1)) + #rotate x-axis labels 45 degrees
+ geom_point() #overlay scatter plot on top
> mpg_summary <- mpg %>% group_by(class) %>% summarize(Mean_Engine=mean(displ), .groups = 'keep') #create summary table
> plt <- ggplot(mpg_summary,aes(x=class,y=Mean_Engine)) #import dataset into ggplot2
> plt + geom_point(size=4) + labs(x="Vehicle Class",y="Mean Engine Size") #add scatter plot
> mpg_summary <- mpg %>% group_by(class) %>% summarize(Mean_Engine=mean(displ),SD_Engine=sd(displ), .groups = 'keep')
> plt <- ggplot(mpg_summary,aes(x=class,y=Mean_Engine)) #import dataset into ggplot2
> plt + geom_point(size=4) + labs(x="Vehicle Class",y="Mean Engine Size") + #add scatter plot with labels
+ geom_errorbar(aes(ymin=Mean_Engine-SD_Engine,ymax=Mean_Engine+SD_Engine)) #overlay with error bars
> mpg_long <- mpg %>% gather(key="MPG_Type",value="Rating",c(cty,hwy)) #convert to long format
> head(mpg_long)
# A tibble: 6 × 11
  manufacturer model displ  year   cyl trans      drv   fl    class MPG_Type
  <chr>        <chr> <dbl> <int> <int> <chr>      <chr> <chr> <chr> <chr>   
1 audi         a4      1.8  1999     4 auto(l5)   f     p     comp… cty     
2 audi         a4      1.8  1999     4 manual(m5) f     p     comp… cty     
3 audi         a4      2    2008     4 manual(m6) f     p     comp… cty     
4 audi         a4      2    2008     4 auto(av)   f     p     comp… cty     
5 audi         a4      2.8  1999     6 auto(l5)   f     p     comp… cty     
6 audi         a4      2.8  1999     6 manual(m5) f     p     comp… cty     
# … with 1 more variable: Rating <int>
> plt <- ggplot(mpg_long,aes(x=manufacturer,y=Rating,color=MPG_Type)) #import dataset into ggplot2
> plt + geom_boxplot() + theme(axis.text.x=element_text(angle=45,hjust=1)) #add boxplot with labels rotated 45 degrees
> ?facet_wrap()
> plt <- ggplot(mpg_long,aes(x=manufacturer,y=Rating,color=MPG_Type)) #import dataset into ggplot2
> plt + geom_boxplot() + facet_wrap(vars(MPG_Type)) + #create multiple boxplots, one for each MPG type
+ theme(axis.text.x=element_text(angle=45,hjust=1),legend.position = "none") + xlab("Manufacturer") #rotate x-axis labels
> ggplot(mtcars,aes(x=wt)) + geom_density() #visualize distribution using density plot
> ?shapiro.test()
> shapiro.test(mtcars$wt)

	Shapiro-Wilk normality test

data:  mtcars$wt
W = 0.94326, p-value = 0.09265

> ?sample_n()
> population_table <- read.csv('used_car_data.csv',check.names = F,stringsAsFactors = F) #import used car dataset
Error in file(file, "rt") : cannot open the connection
In addition: Warning message:
In file(file, "rt") :
  cannot open file 'used_car_data.csv': No such file or directory
> get wd
Error: unexpected symbol in "get wd"
> getwd()
[1] "/Users/pathanafin/Desktop/Class_Folder/R_Analysis"
> population_table <- read.csv('used_car_data.csv',check.names = F,stringsAsFactors = F) #import used car dataset
> View(population_table)
> plt <- ggplot(population_table,aes(x=log10(Miles_Driven))) #import dataset into ggplot2
> plt + geom_density() #visualize distribution using density plot
> sample_table <- population_table %>% sample_n(50) #randomly sample 50 data points
> View(sample_table)
> plt <- ggplot(sample_table,aes(x=log10(Miles_Driven))) #import dataset into ggplot2
> plt + geom_density() #visualize distribution using density plot
> ?t.test()
> t.test(log10(sample_table$Miles_Driven),mu=mean(log10(population_table$Miles_Driven))) #compare sample versus population means

	One Sample t-test

data:  log10(sample_table$Miles_Driven)
t = -0.81675, df = 49, p-value = 0.418
alternative hypothesis: true mean is not equal to 4.39449
95 percent confidence interval:
 4.198815 4.477073
sample estimates:
mean of x 
 4.337944 

> sample_table <- population_table %>% sample_n(50) #generate 50 randomly sampled data points
> sample_table2 <- population_table %>% sample_n(50) #generate another 50 randomly sampled data points
> t.test(log10(sample_table$Miles_Driven),log10(sample_table2$Miles_Driven)) #compare means of two samples

	Welch Two Sample t-test

data:  log10(sample_table$Miles_Driven) and log10(sample_table2$Miles_Driven)
t = 0.21311, df = 97.958, p-value = 0.8317
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -0.1522025  0.1888255
sample estimates:
mean of x mean of y 
 4.416713  4.398402 

> mpg_data <- read.csv('mpg_modified.csv') #import dataset
> View(mpg_data)
> mpg_1999 <- mpg_data %>% filter(year==1999) #select only data points where the year is 1999
> mpg_2008 <- mpg_data %>% filter(year==2008) #select only data points where the year is 2008
> t.test(mpg_1999$hwy,mpg_2008$hwy,paired = T) #compare the mean difference between two samples

	Paired t-test

data:  mpg_1999$hwy and mpg_2008$hwy
t = -1.1165, df = 37, p-value = 0.2714
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -2.1480860  0.6217702
sample estimates:
mean of the differences 
             -0.7631579 

> ?aov()
> mtcars_filt <- mtcars[,c("hp","cyl")] #filter columns from mtcars dataset
> mtcars_filt$cyl <- factor(mtcars_filt$cyl) #convert numeric column to factor
> aov(hp ~ cyl,data=mtcars_filt) #compare means across multiple levels
Call:
   aov(formula = hp ~ cyl, data = mtcars_filt)

Terms:
                      cyl Residuals
Sum of Squares  104030.54  41696.33
Deg. of Freedom         2        29

Residual standard error: 37.91839
Estimated effects may be unbalanced
> summary(aov(hp ~ cyl,data=mtcars_filt))
            Df Sum Sq Mean Sq F value   Pr(>F)    
cyl          2 104031   52015   36.18 1.32e-08 ***
Residuals   29  41696    1438                     
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
> ?cor()
> head(mtcars)
                   mpg cyl disp  hp drat    wt  qsec vs am gear carb
Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1
> plt <- ggplot(mtcars,aes(x=hp,y=qsec)) #import dataset into ggplot2
> plt + geom_point() #create scatter plot
> cor(mtcars$hp,mtcars$qsec) #calculate correlation coefficient
[1] -0.7082234
> used_cars <- read.csv('used_car_data.csv',stringAsFactors = F)
Error in read.table(file = file, header = header, sep = sep, quote = quote,  : 
  unused argument (stringAsFactors = FALSE)
> used_cars <- read.csv('used_car_data.csv',stringsAsFactors = F) #read in dataset
> head(used_cars)
       Car_Name Year Selling_Price Present_Price Miles_Driven Fuel_Type
1          ritz 2014          3350          5590        27000    Petrol
2           sx4 2013          4750          9540        43000    Diesel
3          ciaz 2017          7250          9850         6900    Petrol
4       wagon r 2011          2850          4150         5200    Petrol
5         swift 2014          4600          6870        42450    Diesel
6 vitara brezza 2018          9250          9830         2071    Diesel
  Seller_Type Transmission Owner
1      Dealer       Manual     0
2      Dealer       Manual     0
3      Dealer       Manual     0
4      Dealer       Manual     0
5      Dealer       Manual     0
6      Dealer       Manual     0
> plt <- ggplot(used_cars,aes(x=MilesDriven,y=Selling_Price))
> plt + geom_point()
Error in FUN(X[[i]], ...) : object 'MilesDriven' not found
> plt <- ggplot(used_cars,aes(x=Miles_Driven,y=Selling_Price)) #import dataset into ggplot2
> plt + geom_point() #create a scatter plot
> cor(used_cars$Miles_Driven,used_cars$Selling_Price) #calculate correlation coefficient
[1] 0.02918709
> used_matrix <- as.matrix(used_cars[,c("Selling_Price","Present_Price","Miles_Driven")]) #convert data frame into numeric matrix
> cor(used_matrix)
              Selling_Price Present_Price Miles_Driven
Selling_Price    1.00000000     0.8789825   0.02918709
Present_Price    0.87898255     1.0000000   0.20364703
Miles_Driven     0.02918709     0.2036470   1.00000000
> ?lm()
> lm(qsec ~ hp,mtcars) #create linear model

Call:
lm(formula = qsec ~ hp, data = mtcars)

Coefficients:
(Intercept)           hp  
   20.55635     -0.01846  

> summary(lm(qsec~hp,mtcars)) #summarize linear model

Call:
lm(formula = qsec ~ hp, data = mtcars)

Residuals:
    Min      1Q  Median      3Q     Max 
-2.1766 -0.6975  0.0348  0.6520  4.0972 

Coefficients:
             Estimate Std. Error t value Pr(>|t|)    
(Intercept) 20.556354   0.542424  37.897  < 2e-16 ***
hp          -0.018458   0.003359  -5.495 5.77e-06 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 1.282 on 30 degrees of freedom
Multiple R-squared:  0.5016,	Adjusted R-squared:  0.485 
F-statistic: 30.19 on 1 and 30 DF,  p-value: 5.766e-06

> model <- lm(qsec ~ hp,mtcars) #create linear model
> yvals <- model$coefficients['hp']*mtcars$hp +
+ model$coefficients['(Intercept)'] #determine y-axis values from linear model
> plt <- ggplot(mtcars,aes(x=hp,y=qsec)) #import dataset into ggplot2
> plt + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear model
> lm(qsec ~ mpg + disp + drat + wt + hp,data=mtcars) #generate multiple linear regression model

Call:
lm(formula = qsec ~ mpg + disp + drat + wt + hp, data = mtcars)

Coefficients:
(Intercept)          mpg         disp         drat           wt  
  16.541651     0.108579    -0.008076    -0.578953     1.792793  
         hp  
  -0.018383  

> summary(lm(qsec ~ mpg + disp + drat + wt + hp,data=mtcars)) #generate summary statistics

Call:
lm(formula = qsec ~ mpg + disp + drat + wt + hp, data = mtcars)

Residuals:
    Min      1Q  Median      3Q     Max 
-1.6628 -0.6138  0.0706  0.4087  3.3885 

Coefficients:
             Estimate Std. Error t value Pr(>|t|)    
(Intercept) 16.541651   3.413109   4.847 5.04e-05 ***
mpg          0.108579   0.077911   1.394  0.17523    
disp        -0.008076   0.004384  -1.842  0.07689 .  
drat        -0.578953   0.551771  -1.049  0.30371    
wt           1.792793   0.513897   3.489  0.00175 ** 
hp          -0.018383   0.005421  -3.391  0.00223 ** 
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 1.053 on 26 degrees of freedom
Multiple R-squared:  0.7085,	Adjusted R-squared:  0.6524 
F-statistic: 12.64 on 5 and 26 DF,  p-value: 2.767e-06

> ?chisq.test()
> table(mpg$class,mpg$year) #generate contingency table
            
             1999 2008
  2seater       2    3
  compact      25   22
  midsize      20   21
  minivan       6    5
  pickup       16   17
  subcompact   19   16
  suv          29   33
> tbl <- table(mpg$class,mpg$year) #generate contingency table
> chisq.test(tbl) #compare categorical distributions

	Pearson's Chi-squared test
                    
                    data:  tbl
                    X-squared = 1.0523, df = 6, p-value = 0.9836
                    
                    Warning message:
                      In chisq.test(tbl) : Chi-squared approximation may be incorrect
                    > setwd("~/Desktop/Class_Folder/R_Analysis/MechaCar_Statistical_Analysis")
                    > getwd()
                    [1] "/Users/pathanafin/Desktop/Class_Folder/R_Analysis/MechaCar_Statistical_Analysis"
                    > load("~/Desktop/Class_Folder/R_Analysis/MechaCar_Statistical_Analysis/MechaCarChallenge.RScript.R")
                    Error in load("~/Desktop/Class_Folder/R_Analysis/MechaCar_Statistical_Analysis/MechaCarChallenge.RScript.R") : 
                      empty (zero-byte) input file
                    > View(summarize_demo)
                    
                    Restarting R session...
                    
                    > library(dplyr)
                    
                    Attaching package: ‘dplyr’
                    
                    The following objects are masked from ‘package:stats’:
                      
                      filter, lag
                    
                    The following objects are masked from ‘package:base’:
                      
                      intersect, setdiff, setequal, union
                    
                    > library(dtplyr)
                    > library(dplyr)
                    > library(tidyverse)
                    ── Attaching packages ──────────────────────────────── tidyverse 1.3.1 ──
                    ✓ ggplot2 3.3.5     ✓ purrr   0.3.4
                    ✓ tibble  3.1.4     ✓ stringr 1.4.0
                    ✓ tidyr   1.1.3     ✓ forcats 0.5.1
                    ✓ readr   2.0.1     
                    ── Conflicts ─────────────────────────────────── tidyverse_conflicts() ──
                    x dplyr::filter() masks stats::filter()
                    x dplyr::lag()    masks stats::lag()
                    > Car_Data <- read.csv('MechaCar_mpg.csv')
                    > head(Car_Data)
                    vehicle_length vehicle_weight spoiler_angle ground_clearance AWD
                    1       14.69710       6407.946      48.78998         14.64098   1
                    2       12.53421       5182.081      90.00000         14.36668   1
                    3       20.00000       8337.981      78.63232         12.25371   0
                    4       13.42849       9419.671      55.93903         12.98936   1
                    5       15.44998       3772.667      26.12816         15.10396   1
                    6       14.45357       7286.595      30.58568         13.10695   0
                    mpg
                    1 49.04918
                    2 36.76606
                    3 80.00000
                    4 18.94149
                    5 63.82457
                    6 48.54268
                    > lm(vehicle_length ~ vehicle_weight ~ spoiler_angle ~ ground_clearance ~ AWD ~ mpg.data=Car_Data))
Error: unexpected '=' in "lm(vehicle_length ~ vehicle_weight ~ spoiler_angle ~ ground_clearance ~ AWD ~ mpg.data="
> lm(vehicle_length ~ vehicle_weight ~ spoiler_angle ~ ground_clearance ~ AWD ~ mpg,data =Car_Data))
Error: unexpected ')' in "lm(vehicle_length ~ vehicle_weight ~ spoiler_angle ~ ground_clearance ~ AWD ~ mpg,data =Car_Data))"
> lm(vehicle_length ~ vehicle_weight ~ spoiler_angle ~ ground_clearance ~ AWD ~ mpg,data =Car_Data)
Error in model.frame.default(formula = vehicle_length ~ vehicle_weight ~  : 
                               object is not a matrix
                             > lm(vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,data =Car_Data)
                             Error in stats::model.frame(formula = vehicle_length + vehicle_weight +  : 
                                                           object 'vehicle_length' not found
                                                         > lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,data =Car_Data)
                                                         
                                                         Call:
                                                           lm(formula = vehicle_length ~ vehicle_weight + spoiler_angle + 
                                                                ground_clearance + AWD + mpg, data = Car_Data)
                                                         
                                                         Coefficients:
                                                           (Intercept)    vehicle_weight     spoiler_angle  ground_clearance  
                                                         17.415469         -0.000170         -0.009066         -0.463776  
                                                         AWD               mpg  
                                                         0.406308          0.107731  
                                                         
                                                         > lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data =Car_Data)
                                                         
                                                         Call:
                                                           lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
                                                                ground_clearance + AWD, data = Car_Data)
                                                         
                                                         Coefficients:
                                                           (Intercept)    vehicle_length    vehicle_weight     spoiler_angle  
                                                         -1.040e+02         6.267e+00         1.245e-03         6.877e-02  
                                                         ground_clearance               AWD  
                                                         3.546e+00        -3.411e+00  
                                                         
                                                         > summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data =Car_Data))
                                                         
                                                         Call:
                                                           lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
                                                                ground_clearance + AWD, data = Car_Data)
                                                         
                                                         Residuals:
                                                           Min       1Q   Median       3Q      Max 
                                                         -19.4701  -4.4994  -0.0692   5.4433  18.5849 
                                                         
                                                         Coefficients:
                                                           Estimate Std. Error t value Pr(>|t|)    
                                                         (Intercept)      -1.040e+02  1.585e+01  -6.559 5.08e-08 ***
                                                           vehicle_length    6.267e+00  6.553e-01   9.563 2.60e-12 ***
                                                           vehicle_weight    1.245e-03  6.890e-04   1.807   0.0776 .  
                                                         spoiler_angle     6.877e-02  6.653e-02   1.034   0.3069    
                                                         ground_clearance  3.546e+00  5.412e-01   6.551 5.21e-08 ***
                                                           AWD              -3.411e+00  2.535e+00  -1.346   0.1852    
                                                         ---
                                                           Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
                                                         
                                                         Residual standard error: 8.774 on 44 degrees of freedom
                                                         Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 
                                                         F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11
                                                         
                                                         > Coil_Data <- read.csv('Suspension_Coil.csv')
                                                         > head(Coil_Data)
                                                         VehicleID Manufacturing_Lot  PSI
                                                         1    V40858              Lot1 1499
                                                         2    V40607              Lot1 1500
                                                         3    V31443              Lot1 1500
                                                         4     V6004              Lot1 1500
                                                         5     V7000              Lot1 1501
                                                         6    V17344              Lot1 1501
                                                         > summarize_coil <- Coil_Data %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),Maximum_PSI=max(PSI),Num_Vehicles=n(), .groups = 'keep') #create summary table with multiple columns
                                                         > summarize_coil()
                                                         Error in summarize_coil() : could not find function "summarize_coil"
                                                         > head(summarize_coil)
                                                         # A tibble: 3 × 4
                                                         # Groups:   Manufacturing_Lot [3]
                                                         Manufacturing_Lot Mean_PSI Maximum_PSI Num_Vehicles
                                                         <chr>                <dbl>       <int>        <int>
                                                           1 Lot1                 1500         1502           50
                                                         2 Lot2                 1500.        1506           50
                                                         3 Lot3                 1496.        1542           50
                                                         > summarize_coil <- Coil_Data %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),Maximum_PSI=max(PSI),Median_PSI=median(PSI),SD_PSI=sd(PSI),Variance_PSI=var(PSI),Num_Vehicles=n(), .groups = 'keep') #create summary table with multiple columns
                                                         > head(summarize_coil)
                                                         # A tibble: 3 × 7
                                                         # Groups:   Manufacturing_Lot [3]
                                                         Manufacturing_Lot Mean_PSI Maximum_PSI Median_PSI SD_PSI Variance_PSI Num_Vehicles
                                                         <chr>                <dbl>       <int>      <dbl>  <dbl>        <dbl>        <int>
                                                           1 Lot1                 1500         1502      1500   0.990        0.980           50
                                                         2 Lot2                 1500.        1506      1500   2.73         7.47            50
                                                         3 Lot3                 1496.        1542      1498. 13.0        170.              50
                                                         > View(summarize_coil)
                                                         > total_summary <- Coil_Data(mean(Coil_Data),median(Coil_Data),var(Coil_Data),sd(Coil_Data))
                                                         Error in Coil_Data(mean(Coil_Data), median(Coil_Data), var(Coil_Data),  : 
                                                                              could not find function "Coil_Data"
                                                                            > total_summary <- summarise(mean(Coil_Data),median(Coil_Data),var(Coil_Data),sd(Coil_Data))
                                                                            Error in UseMethod("summarise") : 
                                                                              no applicable method for 'summarise' applied to an object of class "c('double', 'numeric')"
                                                                            In addition: Warning message:
                                                                              In mean.default(Coil_Data) :
                                                                              argument is not numeric or logical: returning NA
                                                                            > Mean = mean(Coil_Data$PSI)
                                                                            > Median = median(Coil_Data$PSI)
                                                                            > Variance = var(Coil_Data$PSI)
                                                                            > SD = sd(Coil_Data$PSI)
                                                                            > total_Summary <- data.frame(Mean,Median,Variance,SD)
                                                                            > View(total_Summary)
                                                                            > t.test((Coil_Data$PSI),mu=1500)
                                                                            
                                                                            One Sample t-test
                                                                            
                                                                            data:  (Coil_Data$PSI)
                                                                            t = -1.8931, df = 149, p-value = 0.06028
                                                                            alternative hypothesis: true mean is not equal to 1500
                                                                            95 percent confidence interval:
                                                                              1497.507 1500.053
                                                                            sample estimates:
                                                                              mean of x 
                                                                            1498.78 
                                                                            
                                                                            > ?t.test()
                                                                            > t.test(subset(Coil_Data,Manufacturing_Lot == "Lot1")$PSI,mu=1500)
                                                                            
                                                                            One Sample t-test
                                                                            
                                                                            data:  subset(Coil_Data, Manufacturing_Lot == "Lot1")$PSI
                                                                            t = 0, df = 49, p-value = 1
                                                                            alternative hypothesis: true mean is not equal to 1500
                                                                            95 percent confidence interval:
                                                                              1499.719 1500.281
                                                                            sample estimates:
                                                                              mean of x 
                                                                            1500 
                                                                            
                                                                            > t.test(subset(Coil_Data,Manufacturing_Lot == "Lot2")$PSI,mu=1500)
                                                                            
                                                                            One Sample t-test
                                                                            
                                                                            data:  subset(Coil_Data, Manufacturing_Lot == "Lot2")$PSI
                                                                            t = 0.51745, df = 49, p-value = 0.6072
                                                                            alternative hypothesis: true mean is not equal to 1500
                                                                            95 percent confidence interval:
                                                                              1499.423 1500.977
                                                                            sample estimates:
                                                                              mean of x 
                                                                            1500.2 
                                                                            
                                                                            > t.test(subset(Coil_Data,Manufacturing_Lot == "Lot3")$PSI,mu=1500)
                                                                            
                                                                            One Sample t-test
                                                                            
                                                                            data:  subset(Coil_Data, Manufacturing_Lot == "Lot3")$PSI
                                                                            t = -2.0916, df = 49, p-value = 0.04168
                                                                            alternative hypothesis: true mean is not equal to 1500
                                                                            95 percent confidence interval:
                                                                              1492.431 1499.849
                                                                            sample estimates:
                                                                              mean of x 
                                                                            1496.14 
                                                                            
                                                                            > 