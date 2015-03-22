--- 
title       : Developing Data Products
subtitle    : Analysis of Portfolio Performance
author      : Valentin Longato
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [quiz, bootstrap,mathjax,shiny]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
runtime     : shiny

--- 

## Purpose

- Evaluate our portfolio to define if it needs rebalancing.
- Assess return of last 6 months (September 1st 2014 - March 20th 2015) to define actions to take.
 - <b>Cash In</b>: Sell anything with return above +20%.
 - <b>Minimize Losses</b>: Sell anything with return below -10%.
- Look for new opportunities.

--- 

## Return

- Calculating the return

$$log(Last Price) - log(First Price)$$

- Example: 
 - Price March 20st was 71.55 USD 
 - Price September 1st was 68.33 USD


```r
100*round(log(71.55) - log(68.33),4)
```

```
## [1] 4.6
```

- Stock price increased 4.6%, we would not sell.

---

## Results

- Using the app we obtain the following results:
 - <b>MA</b>: 17.6%
 - <b>DIS</b>: 19.0%
 - <b>MSFT</b>: -3.7%
 - <b>RAI</b>: 19.9%
 - <b>UA</b>: 13.5%
 - <b>INTC</b>: -8.5%
 - <b>COP</b>: -20.8%
 - <b>DOW</b>: -10.8%
 - <b>NOC</b>: 24.4%

--- &radio

## Action plan

What should we sell?

1. MA, RAI, UA
2. Nothing
3. _COP, NOC, DOW_
4. INTC, COP, RAI

*** .hint 

We said we will sell anything above +20% or below -10%.

*** .explanation

Well calculated.
