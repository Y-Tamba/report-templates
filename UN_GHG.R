library(readr)
GHG <- read_csv("greenhouse_gas_inventory_data_data.csv")
View(GHG)
class(GHG)

install.packages(c("knitr", "rmarkdown"))
install.packages("ymlthis")

rmarkdown::render(
  input  = 'UN_GHG.Rmd'
  , params = list(
    name = 'EDA Report',
    data = 'green_house_gas_inventory_data_data.csv'
    ,  date     = "r format(Sys.time(), '%d %B, %Y')"
  )
)

GHG <- readr::read_csv("greenhouse_gas_inventory_data_data.csv")

yml()
yml() %>% 
  yml_output(pdf_document())

  yml_output(pdf_document())
  