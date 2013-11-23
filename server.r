library(shiny)
require(rCharts)
                      
shinyServer(function(input, output) {
  output$map <- renderMap({
   map3 <- Leaflet$new()
    map3$setView(c(37.8, -96), zoom = 4)
   map3
  })
  output$state <- renderUI({
    selectInput("state", "Select A State", as.list(gsub(".geo.json", "", list.files(file.path(WGJ_DIR, 'countries', 'USA'), ".geo"), fixed = TRUE)))
  })
})
