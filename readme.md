## Important

To compile this simple rmd model, you will need to have the dev version 
of ggplot2 installed. If you don't have it installed, the rmd file 
won't knit. To install: 

```
library(devtools)
install_github("hadley/ggplot2")
```

This file should be self-contained. To download the latest polls from 
Real Clear Politics, run the model and generate the plot, simply
open the .Rmd file in RStudio, make sure you have all the libraries at 
the top of the code chunk installed, and click "Knit HTML". 

If you want to just produce the chart, you can copy out the code chunk
into an R script and run it interactively. 

Enjoy!
