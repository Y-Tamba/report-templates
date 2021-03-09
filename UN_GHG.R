library(readr)
GHG <- read_csv("greenhouse_gas_inventory_data_data.csv")

install.packages(c("knitr", "rmarkdown"))
install.packages("ymlthis")

rmarkdown::render(
  input  = 'UN_GHG.Rmd'
  , params = list(
    data = "green_house_gas_inventory_data_data.csv"
    ,  date     = "r format(Sys.time(), '%d %B, %Y')"
  )
)



##using ymlthis
library(ymlthis) 
yml_output(pdf_document('UN_GHG.Rmd'))
yml(.yml, 'UN_GHG.Rmd') 
 