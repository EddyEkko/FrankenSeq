library(shiny)

#library(VGAM)

source('ui.R')
source('server.R')


shinyApp(
  ui = ui_2,
  server = server
)