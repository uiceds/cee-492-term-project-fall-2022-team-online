---
title: Predictive Model for Concrete Compressive Strength
keywords:
- markdown
- publishing
- manubot
lang: en-US
date-meta: '2022-10-25'
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
  <meta name="dc.date" content="2022-10-25" />
  <meta name="citation_publication_date" content="2022-10-25" />
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
  <link rel="alternate" type="text/html" href="https://uiceds.github.io/cee-492-term-project-fall-2022-team-online/v/b409f08947ac9081f592ccfdadb41d845a730584/" />
  <meta name="manubot_html_url_versioned" content="https://uiceds.github.io/cee-492-term-project-fall-2022-team-online/v/b409f08947ac9081f592ccfdadb41d845a730584/" />
  <meta name="manubot_pdf_url_versioned" content="https://uiceds.github.io/cee-492-term-project-fall-2022-team-online/v/b409f08947ac9081f592ccfdadb41d845a730584/manuscript.pdf" />
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
([permalink](https://uiceds.github.io/cee-492-term-project-fall-2022-team-online/v/b409f08947ac9081f592ccfdadb41d845a730584/))
was automatically generated
from [uiceds/cee-492-term-project-fall-2022-team-online@b409f08](https://github.com/uiceds/cee-492-term-project-fall-2022-team-online/tree/b409f08947ac9081f592ccfdadb41d845a730584)
on October 25, 2022.
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

This section illustrates the general statistics of the dataset. The purpose is to show simple trends in the dataset.

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

Table: Summary Statistics in Table Form.
{#tbl:summarytable}

![
Violin, Box, and Dot Plots of Dataset. (1) Mass Axis (2) Days Axis (3) Strength Axis
](https://raw.githubusercontent.com/uiceds/cee-492-term-project-fall-2022-team-online/main/reference/Ray/BoxViolinDot.png "Square image"){#fig:summaryfig width="55mm"}

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

Table: Secondary Component Observation Count.
{#tbl:seccompobstable}

Blast furnace slag, fly ash, and super plasticizer are not present in all observations. Table @tbl:seccompobstable shows that there are 209 observations without secondary components. Out of the secondary components, superplasticizer is the most prevalent with 651 total observations. However, superplasticizer has the least average mass in the concrete mix. There are no observations with both blast furnace slag and fly ash. 

The median age of concrete strength measurement is at 28 days. Typical concrete testing in the industry is made on the 28th day. Some observations were measured after a year from casting. 

The mean age of concrete strength for the dataset is 35.8 MPa. The minimum and maximum concrete strength observed is 2.3 MPa and 82.6 MPa respectively.

![
Compressive Strength vs W/C Ratio.
](https://raw.githubusercontent.com/uiceds/cee-492-term-project-fall-2022-team-online/main/reference/Ray/WCPlot.png "Square image"){#fig:wcfig width="55mm"}

![
Compressive Strength vs W/C Ratio.
](https://raw.githubusercontent.com/uiceds/cee-492-term-project-fall-2022-team-online/main/reference/Ray/CAPlot.png "Square image"){#fig:cafig width="55mm"}

## References {.page_break_before}

<!-- Explicitly insert bibliography here -->
Yeh, I., 2007. UCI Machine Learning Repository: Concrete Compressive Strength Data Set. [online] Archive.ics.uci.edu. Available at: <https://archive.ics.uci.edu/ml/datasets/concrete+compressive+strength> [Accessed 19 September 2022].
<div id="refs"></div>
