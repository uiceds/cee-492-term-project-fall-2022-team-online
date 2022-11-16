---
title: Predictive Model for Concrete Compressive Strength
keywords:
- markdown
- publishing
- manubot
lang: en-US
date-meta: '2022-11-16'
author-meta:
- Ray Ausan
- Min Win Ye
- Papa Ibrahima Mbodj
- Dafar Obeidat
header-includes: |-
  <!--
  Manubot generated metadata rendered from header-includes-template.html.
  Suggest improvements at https://github.com/manubot/manubot/blob/main/manubot/process/header-includes-template.html
  -->
  <meta name="dc.format" content="text/html" />
  <meta name="dc.title" content="Predictive Model for Concrete Compressive Strength" />
  <meta name="citation_title" content="Predictive Model for Concrete Compressive Strength" />
  <meta property="og:title" content="Predictive Model for Concrete Compressive Strength" />
  <meta property="twitter:title" content="Predictive Model for Concrete Compressive Strength" />
  <meta name="dc.date" content="2022-11-16" />
  <meta name="citation_publication_date" content="2022-11-16" />
  <meta name="dc.language" content="en-US" />
  <meta name="citation_language" content="en-US" />
  <meta name="dc.relation.ispartof" content="Manubot" />
  <meta name="dc.publisher" content="Manubot" />
  <meta name="citation_journal_title" content="Manubot" />
  <meta name="citation_technical_report_institution" content="Manubot" />
  <meta name="citation_author" content="Ray Ausan" />
  <meta name="citation_author_institution" content="Department of Civil and Environmental Engineering, University of Illinois at Urbana-Champaign" />
  <meta name="citation_author" content="Min Win Ye" />
  <meta name="citation_author_institution" content="Department of Civil and Environmental Engineering, University of Illinois at Urbana-Champaign" />
  <meta name="citation_author" content="Papa Ibrahima Mbodj" />
  <meta name="citation_author_institution" content="Department of Civil and Environmental Engineering, University of Illinois at Urbana-Champaign" />
  <meta name="citation_author" content="Dafar Obeidat" />
  <meta name="citation_author_institution" content="Department of Civil and Environmental Engineering, University of Illinois at Urbana-Champaign" />
  <link rel="canonical" href="https://uiceds.github.io/cee-492-term-project-fall-2022-team-online/" />
  <meta property="og:url" content="https://uiceds.github.io/cee-492-term-project-fall-2022-team-online/" />
  <meta property="twitter:url" content="https://uiceds.github.io/cee-492-term-project-fall-2022-team-online/" />
  <meta name="citation_fulltext_html_url" content="https://uiceds.github.io/cee-492-term-project-fall-2022-team-online/" />
  <meta name="citation_pdf_url" content="https://uiceds.github.io/cee-492-term-project-fall-2022-team-online/manuscript.pdf" />
  <link rel="alternate" type="application/pdf" href="https://uiceds.github.io/cee-492-term-project-fall-2022-team-online/manuscript.pdf" />
  <link rel="alternate" type="text/html" href="https://uiceds.github.io/cee-492-term-project-fall-2022-team-online/v/70000e332da828b91da33b462bf487b11cf714b4/" />
  <meta name="manubot_html_url_versioned" content="https://uiceds.github.io/cee-492-term-project-fall-2022-team-online/v/70000e332da828b91da33b462bf487b11cf714b4/" />
  <meta name="manubot_pdf_url_versioned" content="https://uiceds.github.io/cee-492-term-project-fall-2022-team-online/v/70000e332da828b91da33b462bf487b11cf714b4/manuscript.pdf" />
  <meta property="og:type" content="article" />
  <meta property="twitter:card" content="summary_large_image" />
  <link rel="icon" type="image/png" sizes="192x192" href="https://manubot.org/favicon-192x192.png" />
  <link rel="mask-icon" href="https://manubot.org/safari-pinned-tab.svg" color="#ad1457" />
  <meta name="theme-color" content="#ad1457" />
  <!-- end Manubot generated metadata -->
bibliography:
- content/manual-references.json
manubot-output-bibliography: output/references.json
manubot-output-citekeys: output/citations.tsv
manubot-requests-cache-path: ci/cache/requests-cache
manubot-clear-requests-cache: false
...






<small><em>
This manuscript
([permalink](https://uiceds.github.io/cee-492-term-project-fall-2022-team-online/v/70000e332da828b91da33b462bf487b11cf714b4/))
was automatically generated
from [uiceds/cee-492-term-project-fall-2022-team-online@70000e3](https://github.com/uiceds/cee-492-term-project-fall-2022-team-online/tree/70000e332da828b91da33b462bf487b11cf714b4)
on November 16, 2022.
</em></small>

## Authors



+ **Ray Ausan**<br>
    · ![GitHub icon](images/github.svg){.inline_icon}
    [rausan3](https://github.com/rausan3)<br>
  <small>
     Department of Civil and Environmental Engineering, University of Illinois at Urbana-Champaign
  </small>

+ **Min Win Ye**<br>
    · ![GitHub icon](images/github.svg){.inline_icon}
    [FrenchToastty](https://github.com/FrenchToastty)<br>
  <small>
     Department of Civil and Environmental Engineering, University of Illinois at Urbana-Champaign
  </small>

+ **Papa Ibrahima Mbodj**<br>
    · ![GitHub icon](images/github.svg){.inline_icon}
    [pimbooo](https://github.com/pimbooo)<br>
  <small>
     Department of Civil and Environmental Engineering, University of Illinois at Urbana-Champaign
  </small>

+ **Dafar Obeidat**<br>
    · ![GitHub icon](images/github.svg){.inline_icon}
    [dafarno2](https://github.com/dafarno2)<br>
  <small>
     Department of Civil and Environmental Engineering, University of Illinois at Urbana-Champaign
  </small>



## Proposal {.page_break_before}

The team plans to predict the 28<sup>th</sup> day compressive strength of the concrete given a proportion of water, cement, aggregates, and percentage of additives. The dataset has 8 input parameters and 1 output parameter. The model will predict the interactions between the concrete mix components to the compressive strength. The outputs being considered include a table of proportions for mix design and a formula for the compressive strength. 

The model aims to predict the 28<sup>th</sup> day compressive strength of concrete based on the dataset. Traditionally, to compare the actual compressive strength of concrete (Ca) against designed for strength (Cd), 28 days would need to be passed before a cube sample can be crushed to check the compressive strength. This is usually not a problem, if the 28<sup>th</sup> day Ca matches the Cd. However, if there is a mismatch in Ca and Cd, there could be massive hacking of concrete or additionally structures put in place to further enhance the strength. 

To minimize such errors, this model predicts the 28<sup>th</sup> day compressive strength instantaneously when a batch of concrete mix is created. Eventually, with enough confidence, it aims to change the default measurement of 28<sup>th</sup> day compressive strength from cube crushing to using this predictive model. 

## Dataset

### Description
The dataset was retrieved from UCI Machine Learning Repository (Yeh, 2007). It has 1030 observations, 8 quantitative input variables, and 1 quantitative output variable. 

#### Column A/ Component 1: Cement 
Cement is an adhesive substance that acts as a binder for all the components in a concrete mix. Ordinary Portland Cement (OPC) is made up of limestone, clay, and iron ore; and it is most commonly used. According to the ASTM standard, there are five types of cement, the difference due to the chemical composition, altering the properties. In this dataset, Type 1 Ordinary Portland Cement will be used. The unit used is kg of cement per 1 m<sup>3</sup> of the concrete mixture (kg/m<sup>3</sup> of mixture).

#### Column B/ Component 2: Blast Furnace Slag
Blast furnace Ash is a nonmetallic co-product obtained in the production of iron, iron ore, iron scrap and fluxed. It is commonly used in cement production as a substitute for clinker and in concrete production as a substitute for aggregates. The use of slag cement improves performance and durability of concrete.
The unit used is kg of per 1 m<sup>3</sup> of the concrete mixture (kg/m<sup>3</sup> of mixture).

#### Column C/ Component 3: Fly Ash
Fly Ash is byproduct of burning pulverized coal in electric generation.
It is a fine powder used to improve the workability, the strength and the durability of Portland Cement Concrete. It also decreases the water demand of the concrete mix and reduces heat of hydration. 
The unit used is kg of per 1 m<sup>3</sup> of the concrete mixture (kg/m<sup>3</sup> of mixture).

#### Column D/ Component 4: Water {.page_break_before}
Water content is the most important factor affecting the consistency of fresh concrete. The higher the water content, the higher the workability but the lower the strenght of the concrete. 
The unit used is kg per 1 m<sup>3</sup> of the concrete mixture (kg/m<sup>3</sup> of mixture).

#### Column E/ Component 5: Superplasticizer
Superplasticizers are chemical compounds used to reduce the amount of water content in the concrete mixture to produce high-strength concrete while maintaining enough workability. The used unit is kg of the superplasticizer to 1 m<sup>3</sup> of the concrete mixture (kg/m<sup>3</sup> of mixture).

#### Column F/ Component 6: Coarse Aggregate
Coarse Aggregates are inert, granular, and inorganic material. Coarse Aggregates are aggregates that are larger or equal to the ASTM sieve size 4.75mm. Typical coarse aggregates are gravel, crushed stone or previously used concrete etc. They occupy a large volume in a concrete mix (~65-75%), as it acts as an economic filler for cement. The unit used is kg of coarse aggregate per 1 m<sup>3</sup> of the concrete mixture (kg/m<sup>3</sup> of mixture).

#### Column G/ Component 7: Fine Aggregate
Fine Aggregates are inert, granular, and inorganic material. Fine Aggregates are aggregates that are smaller than the ASTM sieve size 4.75mm. Typical fine aggregates are sand, crushed stone or burnt clays etc. The fine aggregates fill in the voids between coarse aggregates. It also provides resistance against shrinking and cracking. The unit used is kg of fine aggregate per 1 m<sup>3</sup> of the concrete mixture (kg/m<sup>3</sup> of mixture).
 
#### Column H/ Component 8: Age
This column represents the age of the concrete mixture after pouring. The concrete gains its strength gradually with time, and according to the ASTM, it reaches to 99% of the target compressive strength after 28 days. The strength will continue to increase after years and it can become larger than the target compressive strength (strength percent > 100%). The unit of this column data is in days. 
 
#### Column I/ Output 1: Concrete compressive strength
 It is the capacity of concrete to withstand compression load before failure. Again, based on the ASTM standards, this property reported at 28 days of curing time.




## Exploratory Data Analysis {.page_break_before}

### Summary Statistics

This section illustrates the general statistics of the dataset to show simple trends in the dataset.

|                   variable |    mean |     std |     min |     q25 |  median |      q75 |      max |
|----------------------------|---------|---------|---------|---------|---------|----------|----------|
|             Cement (kg/m3) | 281.168 | 104.506 | 102.000 | 192.375 | 272.900 |  350.000 |  540.000 |
|              Water (kg/m3) | 181.567 |  21.354 | 121.800 | 164.900 | 185.000 |  192.000 |  247.000 |
|   Coarse Aggregate (kg/m3) | 972.919 |  77.754 | 801.000 | 932.000 | 968.000 | 1029.400 | 1145.000 |
|     Fine Aggregate (kg/m3) | 773.580 |  80.176 | 594.000 | 730.950 | 779.500 |  824.000 |  992.600 |
| Blast Furnace Slag (kg/m3) |  73.896 |  86.279 |   0.000 |   0.000 |  22.000 |  142.950 |  359.400 |
|            Fly Ash (kg/m3) |  54.188 |  63.997 |   0.000 |   0.000 |   0.000 |  118.300 |  200.100 |
|   Superplasticizer (kg/m3) |   6.205 |   5.974 |   0.000 |   0.000 |   6.400 |   10.200 |   32.200 |
|                  Age (day) |  45.662 |  63.170 |   1.000 |   7.000 |  28.000 |   56.000 |  365.000 |
| Compressive strength (MPa) |  35.818 |  16.706 |   2.330 |  23.710 |  34.445 |   46.135 |   82.600 | 

Table: Summary Statistics
{#tbl:summarytable}

![
Violin, Box, and Dot Plots of Dataset. (1) Mass Axis (2) Days Axis (3) Strength Axis
](https://raw.githubusercontent.com/uiceds/cee-492-term-project-fall-2022-team-online/main/reference/Ray/BoxViolinDot.png "BoxViolinDot"){#fig:summaryfig width="500px"}

Table @tbl:summarytable shows the mean, standard deviation, minimum & maximum, first quartile, median, and third quartile. Figure @fig:summaryfig shows a visual form of Table @tbl:summarytable.

The main components, cement, water, and aggregates are present in all concrete mixes. The aggregates make a major portion of the concrete mix. The portion of water in the observations do not vary as much as the other main components. 

| With Blast Furnace Slag | With Fly Ash | With Superplasticizer | Observations |
|-------------------------|--------------|-----------------------|--------------|
|                   false |        false |                 false |          209 |
|                   false |        false |                  true |           23 |
|                   false |         true |                 false |            6 |
|                   false |         true |                  true |          233 |
|                    true |        false |                 false |          164 |
|                    true |        false |                  true |          170 |
|                    true |         true |                  true |          225 |

Table: Secondary Component Observation Count
{#tbl:seccompobstable}

Blast furnace slag, fly ash, and super plasticizer are not present in all observations. Table @tbl:seccompobstable shows that there are 209 observations without secondary components. Out of the secondary components, superplasticizer is the most prevalent with 651 total observations. However, superplasticizer has the least average mass in the concrete mix. There are no observations with both blast furnace slag and fly ash. 

The median age of concrete strength measurement is at 28 days. Typical concrete testing in the industry is made on the 28th day. Some observations were measured after a year from casting. 

The mean age of concrete strength for the dataset is 35.8 MPa. The minimum and maximum concrete strength observed is 2.3 MPa and 82.6 MPa respectively.
<div style="page-break-after: always;"></div>

### Correlation
In this section, the general correlation between various variables has been examined. The purpose is to understand the how each variable affects each other and as well as to understand how each variable affects the compressive strength of concrete. 

![
Correlation plot of Water, Superplasticizer & Compressive Strength 
](https://raw.githubusercontent.com/uiceds/cee-492-term-project-fall-2022-team-online/main/reference/Min Win/plot_1to3.png "Plot_1to3"){#fig:Plot_1to3 width="500px"}

|                            | Cement (kg/m3) | Blast Furnace Slag (kg/m3) | Fly Ash (kg/m3) | Compressive strength (MPa) |
|----------------------------|----------------|----------------------------|-----------------|----------------------------|
|             Cement (kg/m3) |           1.00 |                      -0.28 |           -0.40 |                       0.50 |
| Blast Furnace Slag (kg/m3) |          -0.28 |                       1.00 |           -0.32 |                       0.13 |
|            Fly Ash (kg/m3) |          -0.40 |                      -0.32 |            1.00 |                      -0.11 |
| Compressive strength (MPa) |           0.50 |                       0.13 |           -0.11 |                       1.00 |
Table: Correlation table of Cement, Blast Furnace Slag, Fly Ash, Compressive Strength
{#tbl:corr13}

From Figure @fig:Plot_1to3 and Table @tbl:corr13, is can be seen that apart from the positive correlation of compressive strength to cement, most other correlations have a neutral to negative correlation.  

For the comparison of Compressive Strength against Cement, it is seen to have a moderate positive correlation of 0.50.  This tells us that as cement content increases, the compressive strength of concrete also increases. 

For Compressive Strength against Blast Furnace Slag and Fly Ash, which are commonly used as fillers for cement, it can be seen that they have a very weak correlation of 0.13 and -0.11. As such, it can be taken that Blast Furnace Slag and Fly Ash does not affect Compressive Strength when used as fillers for Cement. 

For the correlation plots comparing Fly Ash against Cement, Fly Ash against Blast Furnace Slag, and Blast Furnace Slag against Cement, it can be seen that they have a weak correlation of -0.40, -0.32, -0.28. The negative correlations corelease with existing domain knowledge that Blast Furnace Slag and Fly Ash are substitutes of Cement. As when either the content of Blast Furnace Slag or Fly Ash goes up, the Cement content goes down.  

From the histogram plots, it can be seen that Blast Furnace Slag and Fly Ash there is a high count of zero, showing that not all concrete mix designs require them. As such, it might be important to take into consideration the effects of the large amounts of zeros during preliminary modelling.  


![
Correlation plot of water , superplasticizer and compressive strength
](https://raw.githubusercontent.com/uiceds/cee-492-term-project-fall-2022-team-online/main/reference/Pim/plot_4to5.png "plot_4to5-2"){#fig:plot4to5 width="500px"}


|                            | Water (kg/m3) | Superplasticizer (kg/m3) | Compressive strength (MPa) |
|----------------------------|---------------|--------------------------|----------------------------|
|              Water (kg/m3) |          1.00 |                    -0.66 |                      -0.29 |
|   Superplasticizer (kg/m3) |         -0.66 |                     1.00 |                       0.37 |
| Compressive strength (MPa) |         -0.29 |                     0.37 |                       1.00 |

Table: Correlation coefficients of water , superplasticizer and compressive strength
{#tbl:corr4to5}

From Table @tbl:corr4to5, we see a weak positive correlation of 0.36 between the amount of superplasticizer in the mix and compressive strength. Table @tbl:corr4to5 also shows a weak negative correlation of -0.29 between Water content and compressive strength. 
As expected, the more water we have in the mix, the weaker the concrete and the more superplasticizer we have, the stronger the concrete.   
We can also observe that Water content and superplasticizer amount have a strong negative correlation of -0.65. Overall the more superplasticizer we have, the less water there is in these concrete mixes. 

![
Correlation plot of Fine Aggregates , Coarse Aggregates and compressive strength
](https://raw.githubusercontent.com/uiceds/cee-492-term-project-fall-2022-team-online/main/reference/Pim/plot_6to7.png "plot_6to7"){#fig:plot6to7 width="500px"}

|                            | Coarse Aggregate (kg/m3) | Fine Aggregate (kg/m3) | Compressive strength (MPa) |
|----------------------------|--------------------------|------------------------|----------------------------|
|   Coarse Aggregate (kg/m3) |                     1.00 |                  -0.66 |                      -0.29 |
|     Fine Aggregate (kg/m3) |                    -0.66 |                   1.00 |                       0.37 |
| Compressive strength (MPa) |                    -0.29 |                   0.37 |                       1.00 |

Table: Correlation coefficients of water , superplasticizer and compressive strength
{#tbl:corr6to7}

In Table @tbl:corr6to7, we can see the correlations between fine aggregates, coarse aggregates and compressive strength.  We have a weak negative correlation of   -0.16 between Fine aggregates and compressive strength and a weak negative correlation coefficient of -0.16 between coarse aggregates and compressive strength. We might gain more insight by taking these two elements together and comparing them to the compressive strength.  

These correlations are in line with what is expected for a concrete mix. 

### Specific Correlation

In this section, the specific interactions between variables will be further discussed.

![
Correlation plot of Water/cement ratio against the concrete compressive strength
](https://raw.githubusercontent.com/uiceds/cee-492-term-project-fall-2022-team-online/main/reference/Dafar/plot_5.png "Plot_5"){#fig:wTOcfig1 width="500px"}

Figure @fig:wTOcfig1 shows the relationship between the water to cement ratio (w/c) and concrete compressive strength. This ratio is considered the most significant influence on the final compressive strength of the concrete mixture. As we can see from Figure @fig:wTOcfig1, the strength of concrete increases as the w/c decreases.  The reason for that is as the amount of water increases in the mixture (for a specific amount of cement), the distance between the cement particles increases which leads to a more diluted and weaker paste. In practice, the w/c ranges from about 0.3 to over 0.8, which is the range where have the largest number of data as seen in the histogram in Figure @fig:wTOcfig1. It is noticeable that there are significant amount of scatter in this relationship which can be attributed to two main reasons. First, this figure includes all the available concrete compressive strength data that have been measured at different concrete ages. The second, there are other factors that play a role in the final concrete compressive strength like the amount of fine and coarse aggregates, and these factors are not filtered within the data used to plot this figure.   

![
Correlation plot of Water/cement ratio against the concrete compressive strength at 28 days
](https://raw.githubusercontent.com/uiceds/cee-492-term-project-fall-2022-team-online/main/reference/Dafar/plot_5b.png "Plot_5b"){#fig:wTOcfig2 width="500px"}

To see how better the relationship can be, the factor of the concrete age was eliminated. In Figure @fig:wTOcfig2, we are plotting the same relationship as in Figure @fig:wTOcfig1 but just using the concrete compressive strength data at 28 days. It is clear that the scatter has been reduced and the effect of the w/c became more apparent.  

The same trend can also be observed in the work that has been done by US Bureau of Reclamation (1975) as shown in Figure @fig:wTOcfig3 below.  

![
Compressive strength versus w/c (US Bureau of Reclamation, 1975)
](https://raw.githubusercontent.com/uiceds/cee-492-term-project-fall-2022-team-online/main/reference/Ray/WCPlotRef.png  "WCPlotRef"){#fig:wTOcfig3 width="500px"}

![
Average compressive strength versus age of observations without secondary components
](https://raw.githubusercontent.com/uiceds/cee-492-term-project-fall-2022-team-online/main/reference/Ray/CAPlot.png  "CAPlot"){#fig:wTOcfig4 width="500px"}

Figure @fig:wTOcfig4 shows averaged compressive strength from observations with the same primary components and more than five instances of measurement in time. 

![
Compressive strength versus age (Merrit, 1983)
](https://raw.githubusercontent.com/uiceds/cee-492-term-project-fall-2022-team-online/main/reference/Ray/CAPlotRef.png   "CAPlotRef"){#fig:wTOcfig5 width="500px"}

In addition to the w/c, the compressive strength against age can also be referenced to established standards. Figure @fig:wTOcfig5 shows that concrete compressive strength increases significantly in the first four weeks from casting and increases gradually thereafter. The same trend illustrated in Figure @fig:wTOcfig4 can be seen in Figure @fig:wTOcfig5. 

## Predictive Modeling Plan {.page_break_before}

The predictive model for this project will be a supervised regression predictive model. The goal is to predict the 28th day concrete compressive strength, given cement, blast furnace slag, fly ash, water, superplasticizer, coarse aggregate, fine aggregate. 

The dataset is a labelled dataset as such supervised learning method will be used train the model. The dataset will be split into training, testing and validation set using cross validation method. The training set will be used to train the model, the testing set will be used to optimize the model, and the validation set will be used to evaluate the performance of the model based on unseen data. The dataset will also be standardized to ensure there is no mismatch of the different scales for the variables.

The preliminary model will be a linear or polynomial model, using gradient descent and an error function such as MSE to train model. To ensure that the model does not overfit the training model, a regularization term either L1 or L2 will be used to optimize the model. L1 in the case of feature selection by reducing non-essential variables to zero, and L2 for the case of lowering the influence of non- essential variables.

Another preliminary predictive model is to use PCA for regression. By transforming the standardized training data into PCA coordinate systems, key variables can be selected while retraining confounding variables.

The output of the model will be able to predict the 28th day concrete compressive strength.  The purpose is to use the model to achieve the instantaneous 28th day strength the moment a batch of concrete is mixed, as traditionally to achieve the 28th day strength, a cube sample will be crushed on the 28th day to find out the strength. By having instantaneous 28th day strength, faulty batches that do not meet the 28th day design strength requirements can be rectified immediately. Preventing additional cost from hacking or additional supporting structures.

## Preliminary Models {.page_break_before}

This section covers four different models to predict the compressive strength of concrete. The root mean square error (rmse) was used to evaluate the performance of the models

### Random Forest

The data was split into three datasets. 60% of the dataset was used for training and 30% of the dataset was used for testing.

No normalization was applied since it is a monotonic transformation that will not affect the decision trees.

![
Predictive Model using Decision Tree. (1) Training Data (2) Testing Data
](https://raw.githubusercontent.com/uiceds/cee-492-term-project-fall-2022-team-online/main/reference/1-Random Forest/Tree.png "DecisionTree"){#fig:treefig width="700px"}

Figure @fig:treefig shows the performance of the preliminary decision tree model against the training and testing data. The preliminary model is overfitting to the testing data since the rmse for the testing data is smaller than the training data. 

![
Predictive Model using Random Forest. (1) Training Data (2) Testing Data
](https://raw.githubusercontent.com/uiceds/cee-492-term-project-fall-2022-team-online/main/reference/1-Random Forest/Forest.png "RandomForest"){#fig:forestfig width="700px"}

Figure @fig:forestfig shows the performance of the preliminary random forest model against the training and testing data. Like the decision tree model, the random forest model is overfitting to the test data.

Although the decision tree model performs better on the testing data, the random forest model is overfitting less. The next step is to optimize hyperparameters to reduce the difference in rmse of the predicted training and predicted test data. This in turn should also improve the performance of the models on the last 10% of validation data.

### SVR

### Linear Regression

### Neural Network

### Model Comparison

Table of rmse, pros and cons of each model

## References {.page_break_before}

<!-- Explicitly insert bibliography here -->
Concrete manual - A water resources technical publication. (8th ed.). (1975). 

Merritt, F. S. (1983). Standard Handbook for Civil Engineers, 3 Ed. McGraw-Hill.

Yeh, I.-C. (2007). UCI Machine Learning Repository: Concrete Compressive Strength Data Set. Retrieved September 19, 2022, from https://archive.ics.uci.edu/ml/datasets/concrete+compressive+strength. 
<div id="refs"></div>
