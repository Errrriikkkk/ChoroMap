library(shiny)
require(rCharts)

shinyUI(
  bootstrapPage(
    headerPanel("Map Example"),
    mainPanel(
#      tags$head(tags$script(src=("js/county.js"))),

      tags$head(tags$script(src=("js/makeMap.js"))),
      uiOutput("state"),
      selectInput("getCounties", "Include County Boundaries?", list(TRUE, FALSE)),
      showOutput("map", "leaflet")
    )

  )
)
