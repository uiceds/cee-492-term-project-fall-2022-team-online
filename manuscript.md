---
title: Predictive Model for Concrete Compressive Strength
keywords:
- markdown
- publishing
- manubot
lang: en-US
date-meta: '2022-12-09'
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
  <meta name="dc.date" content="2022-12-09" />
  <meta name="citation_publication_date" content="2022-12-09" />
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
  <link rel="alternate" type="text/html" href="https://uiceds.github.io/cee-492-term-project-fall-2022-team-online/v/5e5552ba8168984f2c5d014f1d488cd8faf29f82/" />
  <meta name="manubot_html_url_versioned" content="https://uiceds.github.io/cee-492-term-project-fall-2022-team-online/v/5e5552ba8168984f2c5d014f1d488cd8faf29f82/" />
  <meta name="manubot_pdf_url_versioned" content="https://uiceds.github.io/cee-492-term-project-fall-2022-team-online/v/5e5552ba8168984f2c5d014f1d488cd8faf29f82/manuscript.pdf" />
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
([permalink](https://uiceds.github.io/cee-492-term-project-fall-2022-team-online/v/5e5552ba8168984f2c5d014f1d488cd8faf29f82/))
was automatically generated
from [uiceds/cee-492-term-project-fall-2022-team-online@5e5552b](https://github.com/uiceds/cee-492-term-project-fall-2022-team-online/tree/5e5552ba8168984f2c5d014f1d488cd8faf29f82)
on December 9, 2022.
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



## Introduction {.page_break_before}

High-standard quality control of concrete can be a challenge to producers.
The error rate of concrete compressive strength, the most important quality indicator in the concrete industry, can be exaggerated. Developing accurate and reliable compressive strength prediction models could save costs and time. Therefore, much research has been conducted to predict concrete compressive strength.

A predictive model for concrete strength could be helpful for several reasons. In the construction industry, for example, a predictive model for concrete strength could help engineers and contractors to determine the appropriate mix ratios and curing conditions for different types of concrete based on factors such as the intended use and the local climate. This could help ensure that the concrete used in a given project has the desired strength and durability while reducing the risk of costly failures or defects.
In terms of research, a significant amount of work has been done on developing predictive models for concrete strength. This research has typically focused on developing and testing various mathematical and statistical models that can predict the strength of concrete based on factors such as the mix ratios, the curing conditions, and the aggregate used. In many cases, these models have been trained and validated using large datasets of concrete strength measurements collected from various sources, including laboratory experiments and real-world construction projects.
Overall, developing predictive models for concrete strength is an active area of research. Ongoing work is being done to improve the accuracy and reliability of these models and develop new approaches and techniques for predicting concrete strength.

Our team plans to predict the 28<sup>th</sup> day compressive strength of the concrete given a proportion of water, cement, aggregates, and percentage of additives. The dataset has 8 input parameters and 1 output parameter. The model predicts the interactions between the concrete mixture components and the compressive strength. 

Based on the dataset, these models aim to predict concrete's 28<sup>th</sup> day compressive strength. Traditionally, to compare the actual compressive strength of concrete (q'<sup>c</sup>) against the desired strength (q'<sup>cd</sup>), 28 days need to pass. Then a cube sample can is crushed to check the compressive strength. That is usually not a problem if the 28<sup>th</sup> day Ca matches the Cd. However, if there is a mismatch in Ca and Cd, there could be massive hacking of concrete or additional structures put in place to enhance the strength further.

These models instantaneously predict the 28<sup>th</sup> day compressive strength when a batch of concrete mix is made to minimize such errors. Eventually, with enough confidence, it aims to change the default measurement of 28<sup>th</sup> day compressive strength from cube crushing to using this predictive model. 

A dataset with 1030 different observations will be used to train and validate four different models, and the advantages and disadvantages of each option will be discussed. Finally, the accuracy and precision of these models will be assessed using different methods (such as comparing rmse and r<sup>2</sup> values), and recommendations to improve the models' performance will be suggested. 

## Dataset

### Description
The dataset was retrieved from UCI Machine Learning Repository (Yeh, 2007). It has 1030 observations, 8 quantitative input variables, and 1 quantitative output variable. 

#### Column A/ Component 1: Cement 
Cement is an adhesive substance that acts as a binder for all the components in a concrete mix. Ordinary Portland Cement (OPC) is made up of limestone, clay, and iron ore and is most commonly used. According to the ASTM standard, there are five types of cement. The difference is due to the chemical composition, altering the properties. In this dataset, Type 1 Ordinary Portland Cement will be used. The unit used is kg of cement per 1 m<sup>3</sup> of the concrete mixture (kg/m<sup>3</sup> of mixture).

#### Column B/ Component 2: Blast Furnace Slag
Blast furnace ash is a nonmetallic co-product obtained in producing iron, iron ore, iron scrap and flux. It is commonly used in cement production as a substitute for clinker and concrete production as a substitute for aggregates. The use of slag cement improves the performance and durability of concrete.
The unit used is kg per 1 m<sup>3</sup> of the concrete mixture (kg/m<sup>3</sup> of mixture).

#### Column C/ Component 3: Fly Ash {.page_break_before}
Fly ash is a byproduct of burning pulverized coal in electric generation.
It is a fine powder used to improve the workability, strength and durability of Portland Cement Concrete. It also decreases the concrete mix's water demand and reduces hydration heat. 
The unit used is kg of fly ash per 1 m<sup>3</sup> of the concrete mixture (kg/m<sup>3</sup> of mixture).

#### Column D/ Component 4: Water
Water content is the most crucial factor affecting the consistency of fresh concrete. The higher the water content, the higher the workability, but the lower the strength of the concrete. 
The unit used is kg per 1 m<sup>3</sup> of the concrete mixture (kg/m<sup>3</sup> of mixture).

#### Column E/ Component 5: Superplasticizer
Superplasticizers are chemical compounds used to reduce the water content in the concrete mixture to produce high-strength concrete while maintaining enough workability. The used unit is kg of the superplasticizer to 1 m<sup>3</sup> of the concrete mixture (kg/m<sup>3</sup> of mixture).

#### Column F/ Component 6: Coarse Aggregate
Coarse Aggregates are inert, granular, and inorganic materials. Coarse aggregates are larger or equal to the ASTM sieve size of 4.75mm. Typical coarse aggregates are gravel, crushed stone or previously used concrete etc. They occupy a large volume in a concrete mix (~65-75%), as it acts as an economical filler for cement. The unit used is kg of coarse aggregate per 1 m<sup>3</sup> of the concrete mixture (kg/m<sup>3</sup> of mixture).

#### Column G/ Component 7: Fine Aggregate
Fine Aggregates are inert, granular, and inorganic materials. Fine aggregates are smaller than the ASTM sieve size of 4.75mm. Typical fine aggregates are sand, crushed stone or burnt clays etc. They fill in the voids between coarse aggregates. It also provides resistance against shrinking and cracking. The unit used is kg of fine aggregate per 1 m<sup>3</sup> of the concrete mixture (kg/m<sup>3</sup> of mixture).
 
#### Column H/ Component 8: Age
This column represents the age of the concrete mixture after pouring. The concrete gains its strength gradually with time, and according to the ASTM, it reaches 99% of the target compressive strength after 28 days. The strength will continue to increase after years and can become more significant than the target compressive strength (strength percent > 100%). The unit of this column data is in days. 
 
#### Column I/ Output 1: Concrete compressive strength
 It is the capacity of concrete to withstand compression load before failure. Again, based on the ASTM standards, this property is reported at 28 days of curing time.




## Exploratory Data Analysis {.page_break_before}

A comprehensive exploratory analysis will be performed in this section to understand further our dataset (the concrete mixture components), each parameter's role in the compressive strength of concrete, and the relationships between the different parameters. 

### Summary Statistics

This section illustrates the general statistics of the dataset to show simple trends between the different parameters.

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

The main components, cement, water, and aggregates, are present in all concrete mixes. The aggregates make a major portion of the concrete mix. The portion of water in the observations does not vary as much as the other main components. 

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

Blast furnace slag, fly ash, and superplasticizer are not present in all observations. Table @tbl:seccompobstable shows that there are 209 observations without secondary components. The superplasticizer is the most prevalent of the secondary components, with 651 total observations. However, superplasticizer has the least average mass in the concrete mix. There are no observations with both blast furnace slag and fly ash. 

The median age of concrete strength measurement is at 28 days. Typical concrete testing in the industry is made on the 28<sup>th</sup> day. Some observations were measured after a year from casting. 

The mean age of concrete strength for the dataset is 35.8 MPa. The minimum and maximum concrete strength observed are 2.3 MPa and 82.6 MPa, respectively.
<div style="page-break-after: always;"></div>

### Correlation
In this section, the general correlations between various variables have been examined. The purpose is to understand how variables affect each other and how each variable affects the compressive strength of concrete. 

![
Correlation plot of water, superplasticizer & compressive strength 
](https://raw.githubusercontent.com/uiceds/cee-492-term-project-fall-2022-team-online/main/reference/Min Win/plot_1to3.png "Plot_1to3"){#fig:Plot_1to3 width="500px"}

|                            | Cement (kg/m3) | Blast Furnace Slag (kg/m3) | Fly Ash (kg/m3) | Compressive strength (MPa) |
|----------------------------|----------------|----------------------------|-----------------|----------------------------|
|             Cement (kg/m3) |           1.00 |                      -0.28 |           -0.40 |                       0.50 |
| Blast Furnace Slag (kg/m3) |          -0.28 |                       1.00 |           -0.32 |                       0.13 |
|            Fly Ash (kg/m3) |          -0.40 |                      -0.32 |            1.00 |                      -0.11 |
| Compressive strength (MPa) |           0.50 |                       0.13 |           -0.11 |                       1.00 |
Table: Correlation table of cement, blast furnace slag, fly ash, compressive strength
{#tbl:corr13}

Figure @fig:Plot_1to3 and Table @tbl:corr13 show that apart from the positive correlation of compressive strength to cement, most other correlations have a neutral to negative correlation.  

Comparing compressive strength against cement content, we observe a moderate positive correlation of 0.50. It shows that as cement content increases, the compressive strength of the concrete also increases. 

For compressive strength against blast furnace slag and fly ash, which are commonly used as fillers for cement, it can be seen that they have a very weak correlation of 0.13 and -0.11. As such, we conclude that blast furnace slag and fly ash do not affect compressive strength when used as fillers for cement. 

For the correlation plots comparing fly ash against cement, fly ash against blast furnace slag, and blast furnace slag against cement, it can be seen that they have a weak correlation of -0.40, -0.32, and -0.28. The negative correlations correlate with existing knowledge that blast furnace slag and fly ash are cement substitutes. When the content of blast furnace slag or fly ash goes up, the cement content goes down.  

From the histogram plots, it can be seen that Blast Furnace Slag and Fly Ash have a high count of zero, showing that not all concrete mix designs require them. As such, it might be essential to consider the effects of the large amounts of zeros during preliminary modelling.  


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
As expected, the more water we have in the mix, the weaker the concrete and the more superplasticizer we have, the stronger the concrete. We can also observe that Water content and superplasticizer amount have a strong negative correlation of -0.65. Overall the more superplasticizer we have, the less water there is in these concrete mixes. 

![
Correlation plot of fine aggregates , coarse aggregates and compressive strength
](https://raw.githubusercontent.com/uiceds/cee-492-term-project-fall-2022-team-online/main/reference/Pim/plot_6to7.png "plot_6to7"){#fig:plot6to7 width="500px"}

|                            | Coarse Aggregate (kg/m3) | Fine Aggregate (kg/m3) | Compressive strength (MPa) |
|----------------------------|--------------------------|------------------------|----------------------------|
|   Coarse Aggregate (kg/m3) |                     1.00 |                  -0.66 |                      -0.29 |
|     Fine Aggregate (kg/m3) |                    -0.66 |                   1.00 |                       0.37 |
| Compressive strength (MPa) |                    -0.29 |                   0.37 |                       1.00 |

Table: Correlation coefficients of water , superplasticizer and compressive strength
{#tbl:corr6to7}

In Table @tbl:corr6to7, we can see the correlations between fine aggregates, coarse aggregates and compressive strength. We have a weak negative correlation of   -0.16 between Fine aggregates and compressive strength and a weak negative correlation coefficient of -0.16 between coarse aggregates and compressive strength. We might gain more insight by taking these two elements together and comparing them to the compressive strength.  

These correlations are in line with what is expected for a concrete mix. However, more in-depth correlations using combinations of different components are investigated to understand our dataset further. 

### Specific Correlation

In this section, the specific interactions between variables will be further discussed.

![
Correlation plot of water/cement ratio against the concrete compressive strength
](https://raw.githubusercontent.com/uiceds/cee-492-term-project-fall-2022-team-online/main/reference/Dafar/plot_5.png "Plot_5"){#fig:wTOcfig1 width="500px"}

Figure @fig:wTOcfig1 shows the relationship between the water-to-cement ratio (w/c) and concrete compressive strength. This ratio is considered the most significant influence on the final compressive strength of the concrete mixture. As we can see from Figure @fig:wTOcfig1, the strength of concrete increases as the w/c decreases. The reason for that is as the amount of water increases in the mixture (for a specific amount of cement), the distance between the cement particles increases, which leads to a more diluted and weaker paste. In practice, the w/c ranges from about 0.3 to over 0.8, which is the range with the largest number of data, as seen in the histogram in Figure @fig:wTOcfig1. It is noticeable that there is a significant amount of scatter in this relationship which can be attributed to two main reasons. First, this figure includes all the available concrete compressive strength data measured at different ages. Second, other factors play a role in the final concrete compressive strength, like the amount of fine and coarse aggregates, and these factors are not filtered within the data used to plot this figure. 

![
Correlation plot of water/cement ratio against the concrete compressive strength at 28 days
](https://raw.githubusercontent.com/uiceds/cee-492-term-project-fall-2022-team-online/main/reference/Dafar/plot_5b.png "Plot_5b"){#fig:wTOcfig2 width="500px"}

To see how much better the relationship can be, the factor of the concrete age was eliminated. In Figure @fig:wTOcfig2, we plot the same relationship as in Figure @fig:wTOcfig1 but use the concrete compressive strength data at 28 days. It is clear that the scatter has been reduced, and the effect of the w/c became more apparent.  

The same trend can also be observed in work done by the US Bureau of Reclamation (1975), as shown in Figure @fig:wTOcfig3 below. 

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

In addition to the w/c, the compressive strength against age can also be referenced to established standards. Figure @fig:wTOcfig5 shows that concrete compressive strength increases significantly in the first four weeks from casting and increases gradually after that. The same trend illustrated in Figure @fig:wTOcfig4 can be seen in Figure @fig:wTOcfig5. 

All these observations gathered from the general trends and the in-depth relationships will be used to improve our different models by utilizing techniques like feature selection, which we will discuss in the following sections. 

## Predictive Modeling Plan {.page_break_before}

In this project, multiple predictive models that have different characteristics will be developed to estimate the 28<sup>th</sup> day concrete compressive strength. The input parameters for each model are the concrete mixture components (water, cement, aggregate, and additives). 

The dataset is labelled data; as such supervised learning method will be used to train the models. The data will be split into training, testing and validation datasets using cross-validation method. The training dataset will be used to train the model; the testing dataset will be used to optimize the model. The validation dataset will be used to evaluate the performance of these models as they are considered unseen observations. The data will also be standardized to ensure there is no mismatch of the different scales for the variables.

The models that will be investigated in this project are 1. Random Forest, 2. Support Vector Regression (SVR), 3. Linear Regression, and 4. Neural Network. These models have been selected based on our understanding of the characteristics of the data that we have and the correlations between the different input parameters that we have discussed in the exploratory analyses in the previous section. To ensure that these models do not overfit the training model, a regularization term either L1 or L2 will be used to optimize them. L1 in the case of feature selection by reducing non-essential variables to zero, and L2 in the case of lowering the influence of non-essential variables. 

The output of these models will be able to predict the 28<sup>th</sup> day concrete compressive strength. The purpose is to use these models to achieve the instantaneous 28<sup>th</sup> day strength the moment a batch of concrete is mixed, as traditionally to achieve the 28<sup>th</sup> day strength, a cube sample will be crushed on the 28<sup>th</sup> day to find out the strength. By having instantaneous 28<sup>th</sup> day strength, faulty batches that do not meet the 28<sup>th</sup> day design strength requirements can be rectified immediately, preventing additional costs from hacking or additional supporting structures.

## Preliminary Models {.page_break_before}

This section covers four different models to predict the compressive strength of concrete. The root mean square error (rmse) was used to evaluate the performance of the models.

### Random Forest

The data was split into three datasets. 60% of the dataset was used for training and 30% of the dataset was used for testing.

![
Predictive Model using Decision Tree. (1) Training Data (2) Testing Data
](https://raw.githubusercontent.com/uiceds/cee-492-term-project-fall-2022-team-online/main/reference/1-Random Forest/Tree.png "DecisionTree"){#fig:treefig width="500px"}

Figure @fig:treefig shows the performance of the preliminary decision tree model against the training and testing data. The model has a depth of 12 with 97 leaves. This implies that the features can be labeled into 97 different ways. The preliminary model is overfitting to the testing data since the rmse for the testing data is smaller than the training data.

![
Predictive Model using Random Forest. (1) Training Data (2) Testing Data
](https://raw.githubusercontent.com/uiceds/cee-492-term-project-fall-2022-team-online/main/reference/1-Random Forest/Forest.png "RandomForest"){#fig:forestfig width="500px"}

Figure @fig:forestfig shows the performance of the preliminary random forest model against the training and testing data. The model has 10 trees with an average depth of 12.3 and with 68.6 average number of leaves. This implies that the features can be labeled into 98 different ways. Like the decision tree model, the random forest model is overfitting to the test data.

![
Predictive Model using Decision Tree and Normalized Data.
](https://raw.githubusercontent.com/uiceds/cee-492-term-project-fall-2022-team-online/main/reference/1-Random Forest/TreeVal.png "TreeVal"){#fig:treevalfig width="250px"}

Figure @fig:treevalfig shows the performance of the decision tree model with normalization against the validation data. It has an rmse of 7.11. Normalization does not affect the decision tree by much since it is a monotonic transformation.

![
Predictive Model using Random Forest and Normalized Data.
](https://raw.githubusercontent.com/uiceds/cee-492-term-project-fall-2022-team-online/main/reference/1-Random Forest/ForestVal.png "ForestVal"){#fig:forestvalfig width="250px"}

Figure @fig:forestvalfig shows the performance of the random forest model with normalization against the validation data. It has an rmse of 6.89 that is better than the validation rmse of the normalized decision tree model. 

Although the decision tree model performs better on the testing data, the random forest model is overfitting less. The next step is to optimize hyperparameters to reduce the difference in rmse of the predicted training and predicted test data. This in turn should also improve the performance of the models on the last 10% of validation data.

<div style="page-break-after: always;"></div>

### Support Vector Regression (SVR)
In this section, support vector regression (SVR) with Radial Basis Function (RBF) kernel will be used to predict the concrete compression strength. This section will first cover the basics of SVR and RBF, followed by the model performance based on default hyperparameters. After which, the optimized model performance based on hyperparameter tuning using GridSearchCV will be evaluated. To further optimize the model, normalized will be introduced to the input variables, and the results of that will be discussed. Lastly, the model will be evaluated based on the performance using the validation set, which best mimics real world cases. The data will also be split into three datasets. 60% of the data was used for training and 30% and 10 % of the data were used for testing and validating, respectively.

<u> SVR & RBF </u><br/>
Support vector regression (SVR) is a supervised learning model that is used to predict discrete values. Support vector regression uses the same principle as the Support Vector Machine (SVM). The idea behind SVR is to find the best fit line. In SVR, the best fit is the hyperplane that has the maximum number of points. SVR tries to fit the best line within a threshold value. The threshold value epsilon (ε) is the distance between the hyperplane and boundary line. <br/>

Radial basis function (RBF) in its application of support vector machines (SVM), is a type of kernel method used to classify or regress data. it maps non-linear data into a higher dimensional space implicitly by computing the inner products between images of all pairs of data in the feature space (Theodoridis & Koutroumbas, 2009). RBF interpolation is an advanced approximation method, in which the interpolant is the weighted sum of radial basis functions, an example would be the gaussian distribution (Hardy, 1971). This method is popular due to its higher emphasis on radial distances closer to the center and it decreases as the radial distance expands.

<u> Preliminary SVR model </u><br/>
Figure @fig:SVR_initial below shows the preliminary SVR model with the training and testing data; with default hyperparameters.

![
Initial Model using SVR, with default hyperparameters. (1) Training Data (2) Testing Data 
](https://raw.githubusercontent.com/uiceds/cee-492-term-project-fall-2022-team-online/main/reference/2-Support Vector Regression/SVR_initial_2.png "Initial SVR Model"){#fig:SVR_initial width="500px"}

From @fig:SVR_initial, it can be seen that the rmse of both training and testing data yielded a bad result of ~15 MPa. This is because the default hyperparameters C = 1.0, gamma = 1 / (n_features * X.var()) were used. To improve the performance of the model, the hyperparameters will be tuned.

<u> Hyperparameter tuning & Optimized SVR Model </u><br/>
In Support Vector Regression using RBF kernel, there are two hyperparameters C and gamma. The parameter C is a regularization factor that controls the amount of misclassification each training data handles. A larger C will result in a smaller margin of the hyperplane, classifying all the points correctly. On the other hand, a smaller C will increase the margin for the hyperplane and increase the model’s tolerance for misclassification. For parameter gamma, it controls the influence of training data. Low values of gamma will generate a flatter decision surface which corresponds to a simpler model. A larger gamma will increase the curvature of the model, fitting it more closely to the training data. There is no rule of thumb to choose C and gamma, as such tuning is required to find the optimal value (Wainer & Fonseca, 2021). 

To tune these parameters, GridSearchCV from scikit learn will be used to perform a Grid Search. Grid Search uses different combinations of different values of the hyperparameters and evaluates the performance of a combination of these values, to find out the best value of the hyperparameter (Wainer & Fonseca, 2021).

Figure @fig:SVR_Optimized below shows the optimized SVR model with the training and testing data; after tuned hyperparameters.

![
Optimized Model using SVR, with tuned hyperparameters C = 10, gamma = 1.1e-5. (1) Training Data (2) Testing Data 
](https://raw.githubusercontent.com/uiceds/cee-492-term-project-fall-2022-team-online/main/reference/2-Support Vector Regression/SVR_2.png "Optimized SVR Model"){#fig:SVR_Optimized width="500px"}

The model is trained with the focus of getting the lowest rmse, while ensuring the rmse of training and testing data is consistent. This is to prevent the case of overfitting where the model cannot generalize and fits too closely to the training dataset. From Figure @fig:SVR_Optimized, it can be seen that after hyperparameter tuning, the model is optimized to yield a rmse of ~8.5 MPa. The hyperparameters used for this model are C=10, gamma = 1.1e-5.

<u> Optimized SVR Model (with normalized input variables) </u><br/>
To further optimize the model, the input variables were normalized. Normalization is a technique often applied as part of data preparation for machine learning. The goal of normalization is to change input variables to use a common scale, without distorting differences in the ranges of values.

Figure @fig:SVR_Normalized below shows the SVR model based on normalized input variables with the training and testing data; after hyperparameter tuning.

![
Normalized input variable model using SVR, with tuned hyperparameters C = 50, gamma = 0.02. (1) Training Data (2) Testing Data
](https://raw.githubusercontent.com/uiceds/cee-492-term-project-fall-2022-team-online/main/reference/2-Support Vector Regression/SVR_normed_2.png "Normalized SVR Model"){#fig:SVR_Normalized width="500px"}

From figure @fig:SVR_Normalized, it can be seen that after normalizing the input variables (with tuned hyperparameters), the model did not yield a better rmse. It has a rmse of ~8 to 8.5 MPa which his comparable to the rmse without normalization of ~8.5 MPa. 

<u> Model Performance on Validation Set </u><br/>
To ensure that the model works well in the real world, the model performance will be evaluated using the validation dataset. The validation dataset is unseen/untested by the model. Because the data is unseen, the model has not been calibrated/optimized based on the validation set. Therefore, the validation set acts like the unseen real world use cases. In this section, the model performance for the Optimized SVR model with and without normalization will be evaluated. 

Figure @fig:SVR_Val below shows the comparison of the optimized SVR model without normalization and with normalization data, based on the validation set.

![
Model performance of optimized SVR Model based on Validation Set (1) without normalization (2) with normalization
](https://raw.githubusercontent.com/uiceds/cee-492-term-project-fall-2022-team-online/main/reference/2-Support Vector Regression/SVR_val_2.png "Val Set SVR Performance Comparison"){#fig:SVR_Val width="500px"}

From figure @fig:SVR_Val, it can be seen that based on the validation set, the optimized SVR model without normalization performed better than the model with normalization with a lower rmse of 8.87 MPa compared to 11.3 MPa 

The optimized SVR model (w/o normalization) also showed a consistent rmse value of ~8.5 to 8.9 MPa, which suggests that there is no overfitting. Without the evidence of overfitting, it shows that the model has a good indication of its performance to accurately predict real world concrete strength.  However, this is not the case for the optimized SVR model (with normalization), as it yielded a rmse of 11.3, it indicates that there might be overfitting and inaccurate predictions when exposed to real world cases. Although this was not seen in both the training and testing cases, it showed up in the validation case.

Therefore, the best performing model using support vector regression is the optimized SVR model (w/o normalization), as it yielded both a lower rmse and there is no signs of overfitting. 

<div style="page-break-after: always;"></div>

### Linear Regression

Again, the data was split into three datasets. 60% of the data was used for training and 30% and 10 % of the data were used for testing and validating, respectively.

![
Predictive Model Using Linear Regression. (1) Training Data (2) Testing Data
](https://raw.githubusercontent.com/uiceds/cee-492-term-project-fall-2022-team-online/main/reference/3-%20Linear%20Regression/Regression1.png "LR"){#fig:Regression1 width="500px"}

As we can see from Figure @fig:Regression1, the performance of the linear regression is relatively good. The rmse was relatively low, and it is very similar for both the training and the testing datasets. This also suggests that there was no overfitting in our model. 

![
The Effect of Feature Engineering on the Linear Regression Model. (1) Training Data (2) Testing Data
](https://raw.githubusercontent.com/uiceds/cee-492-term-project-fall-2022-team-online/main/reference/3-%20Linear%20Regression/Regression.png "LR"){#fig:Regression width="500px"}

Figure @fig:Regression shows the performance of the preliminary linear regression model after logically modifying the input data. The superplasticizer is a material that can be added to the concrete in order to increase its workability while maintaining the same strength. As a result, increasing or decreasing the amount of superplasticizer in the mixture would not affect, by itself, the compressive strength of concrete. And we have seen before from the data that there is no relationship between these two parameters.As a result, this column has been excluded from the datasets here. On the other hand, the most important parameter that affects the compressive strength of concrete is the water to cement ratio which has been included to further increase the accuracy of our linear regression model. We can see that the rmse decreased slightly from 11.9 and 11.8 to 10.3 and 10.5 for training and testing data, respectively.  

![
Predictive Model Using Linear Regression on Validation Dataset. 
](https://raw.githubusercontent.com/uiceds/cee-492-term-project-fall-2022-team-online/main/reference/3-%20Linear%20Regression/LRval.png "LR"){#fig:RegressionVal width="250px"}

Figure @fig:RegressionVal shows the performance of the linear regression model against the validation dataset. It has an rmse of 12.50. This still close from the rmse of the training and testing datasets. 

An important point to mention here is that the linear regression model takes significantly long time to run. It took over 500 minutes to run on the training data. This very long run time can be attributed to the very small learning rate and large number of steps needed to train the model. Without that, the model was giving NaN results.

In the next phase, further investigation of the effect of hyperparameters (e.g. regularization, feature engineering, etc) on the linear regression model will be performed. The purpose of that is to increase the accuracy of this model by reducing rmse for both the training and testing datasets, and with using the validating dataset as well. Furthermore, the learning rate and number of steps will be investigated more to reduce the run time of our model and being able to do more trials.

<div style="page-break-after: always;"></div>

### Neural Network

We are now using a neural network model to predict concrete compressive strength. We started by splitting and shuffling the data. The split chosen is 60% of the initial dataset for training, 30% for testing and 10% for validation.
Two predictions were made. The input data was normalised for the first one, and for the second, it was not. Both predictions were made using the same model with the same number of layers/nodes, the same learning rates (0.000001) and the same number of steps (100000).
All models are 2 layers neural networks. We have 8 independent variables for 1 dependent variable.
Therefore the inputs layer and deep layer have 8 neurons and the output layer has one neuron. 

![
Predictive model using neural network. (1) Training Data (2) Testing Data
](https://raw.githubusercontent.com/uiceds/cee-492-term-project-fall-2022-team-online/main/reference/4-Neural Networks/NeuralNetwork.png "Neural Network without Normalization"){#fig:NNV width="500px"}

Figure @fig:NNV shows the results of the preliminary neural network model without normalization against the training and testing data. The rmse values observed consistently ranged between 7 MPa and 9 MPa. There is sign of overfitting, as the rmse of the training was consistently less than the testing data accross multiple runs.

![
Predictive model using neural network. (1) Training Data (2) Testing Data
](https://raw.githubusercontent.com/uiceds/cee-492-term-project-fall-2022-team-online/main/reference/4-Neural Networks/NeuralNetworkNorm.png "Neural Network with Normalization"){#fig:NNVNORM width="500px"}

Figure @fig:NNVNORM shows the results of the preliminary neural network model with normalization against the training and testing data. We observe larger rmse values than when running the model without normalization. The rmse values ranged consistently between 9 MPa and 11MPa. Different activation functions could be tried to optimize the model with normalization, and the number of nodes/layers increased. 
A relu activation was applied for this model, and there might be better choices for the normalized data.

![
Predictive neural network model without normalization using the validation Data.
](https://raw.githubusercontent.com/uiceds/cee-492-term-project-fall-2022-team-online/main/reference/4-Neural Networks/NNVal.png "NNVal"){#fig:NNVal width="250px"}

Figure @fig:NNVal shows the performance of the neural network model without normalization using the validation data as the input. The rmse value obtained is 7.24.

![
Predictive neural Network model with normalization using the validation Data.
](https://raw.githubusercontent.com/uiceds/cee-492-term-project-fall-2022-team-online/main/reference/4-Neural Networks/NNValNorm.png "NNVal"){#fig:NNValNorm width="250px"}

Figure @fig:NNValNorm shows the performance of the neural network model with normalization using the validation data as the input. The rmse value obtained is 9.83. 

<div style="page-break-after: always;"></div>

### Model Comparison

In this section, the performance of various models will be compared amongst each other to evaluate the optimal Machine Learning model for predicting concrete strength.

|   Random Forest   |   Neural Network  |        Support Vector Regression        | Linear Regression |
|-------------------|-------------------|-----------------------------------------|-------------------|
|        6.94       |        7.24       |                  8.87                   |       12.50       |
Table: rmse of the models
{#tbl:RMSEs}

After optimizing the various ML models, each model was evaluated using the validation set. The validation set is used as it is an unseen set of data by the model, as such it is used to mimic the model as if it is to be used in an actual scenario to predict concrete strength.

From Table @tbl:RMSEs it can be noted Random Forest performed the best with an rmse of 6.94 MPa, followed by Neural Network of 7.24 MPa, SVR of 8.87 MPa, and linear regression of 12.50 MPa. The linear regression formed the worst, the main issue with linear regression is the long processing time due to the requirement of using small learning rate and high number of steps, coupled with the fact that the simple linear regression might give a relatively simple/bad fit to the dataset, it yield the worst result.

A possibility of random Forest and neural network performing better than SVR is due to the complexity. With the adided complexity, it might in turn lead to a better prediction. However, this is in turn a trade of with model processing time. 




## Discussion {.page_break_before}

In this project, four different models have been utilized to predict the compressive strength of a concrete mixture. In all models, the independent variables were the concrete mixture components (Cement, blast furnace slag, fly ash, water, superplasticizer, coarse aggregate, fine aggregate) and concrete age, whereas the dependent variable was the Compressive Strength. The four models were able to predict the concrete compressive strength in a good way but with relatively different degrees of success.  

### Random Forest

A regression decision tree is a learning method that uses nested rules to make a decision. Although the decision tree has a simple algorithm, it yields a complex model characterized by the tree's depth and the number of leaves. This model is unaffected by normalization. Optimizing for minimum samples per leaf and pruning purity threshold yields a better rmse. However, the decision tree exhibits overfitting.  

A regression random forest is a learning method that takes the mean prediction of a collection of decision trees. According to Yiu (2019), the random forest classifier is an ensemble of decision trees that protect each other from errors. Minimally correlated ensemble decision trees perform better. Individual inaccurate trees, if uncorrelated, do not spoil the prediction. This model is unaffected by normalization and marginally improved by hyperparameter optimization. The regression random forest performed better than a regression decision tree. It also exhibits overfitting to the test data. 

### Support Vector Regression

The support vector regression (SVR) model uses the same principle as the support vector machine (SVM) to find the best fit line. However, in SVR, the best fit is the hyperplane that has the maximum number of points. The results on the validation set showed a rmse of 8.87 MPa. This is a reasonable result as in regression analysis, the case in which the actual and predicted outcomes are the same hardly exists for predicting concrete strength (Pham et al., 2016). The advantage of SVR is that the decision model can be easily updated, requires lower computation compared to other regression techniques, and is easy to implement. The disadvantage of SVR is that it is hard to interpret the model after training it. Another disadvantage is that the hyperparameters need to be optimized well to obtain a good result, in contrast to random forest. As such, due to its sensitivity to hyperparameter tuning, which cannot be done through gradient descent, it is challenging to implement the most optimized model. Further improvements should be explored, such as trying different kernels with different hyperparameters, to yield a better result. 

### Linear Model

The linear regression model gives the highest rmse values. This might be due to multiple reasons like the model is not complicated enough, the compressive strength of the concrete mixture depends on a large number of variables (all different components and the concrete age), the percentage of each of these components in the mixture, and the relationship between these components themselves and between the components with the concrete compressive strength are not a simple linear relationship. Moreover, this model was the slowest (computationally the least efficient). A large number of steps with minimal learning rates were needed to train the model and to get it to work, and give reasonable predictions. Again, this might be due to using a simple model to solve a relatively more complicated problem. 

### Neural Network

The Neural Network model used to predict the concrete compressive strength is a 2 layers neural network. There are 8 independent variables for 1 dependent variable. The input data was shuffled and split. 60% of the data was used for training the model, 30% for testing the data, and 10% for validation. A Neural Network model is more suited than linear regression for problems of this type. Indeed, Neural Network models are more suited if with data have some non-linear dependencies, which can be the case with complex concrete mixes. A high level of confidence should be attainable. The results are satisfying, but this model has room for improvement to reduce the rmse. The following steps would be optimizing the model by adjusting the number of layers and trying different activation functions. 

### Further Improvements

Currently, the model predicts the general strength of concrete given its input parameters. Although it can predict the 28th day strength, the model is not trained to optimize the 28th day compressive strength accurately. As such, the following steps to improve the different models would be to compare specifically the 28th day strength and focus on the accuracy regarding this aspect. Cross-validation could also be implemented to ensure consistency in the model and that it is not biased towards a specific training, test and validation split. 

## References {.page_break_before}

<!-- Explicitly insert bibliography here -->
Concrete manual - A water resources technical publication. (8th ed.). (1975). 

Hardy, R. (1971). Multiquadric equations of topography and other irregular surfaces. Journal Of Geophysical Research, 76(8), 1905-1915. https://doi.org/10.1029/jb076i008p01905

Merritt, F. S. (1983). Standard Handbook for Civil Engineers, 3 Ed. McGraw-Hill.

Pham, A.-D., Hoang, N.-D. and Nguyen, Q.-T. (2016) “Predicting compressive strength of high-performance concrete using metaheuristic-optimized least squares support vector regression,” Journal of Computing in Civil Engineering, 30(3). Available at: https://doi.org/10.1061/(asce)cp.1943-5487.0000506. 

Theodoridis, S., & Koutroumbas, K. (2009). Pattern Recognition, 4th Edition. Academic Press.

Wainer, J., & Fonseca, P. (2021). How to tune the RBF SVM hyperparameters? An empirical evaluation of 18 search algorithms. Artificial Intelligence Review, 54(6), 4771-4797. https://doi.org/10.1007/s10462-021-10011-5

Yeh, I.-C. (2007). UCI Machine Learning Repository: Concrete Compressive Strength Data Set. Retrieved September 19, 2022, from https://archive.ics.uci.edu/ml/datasets/concrete+compressive+strength. 

Yiu, T. (2019) Understanding random forest, Medium. Towards Data Science. Available at: https://towardsdatascience.com/understanding-random-forest-58381e0602d2 (Accessed: December 1, 2022). 
<div id="refs"></div>
