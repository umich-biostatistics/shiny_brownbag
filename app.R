
# install packages ----
install.packages(c('shiny', 'quantmod'))

# Load packages ----
library(shiny)
library(quantmod)


# basic app ---- copy from cheat sheet


# Building an app ---- example 1, cheat sheet


# Building an app: stock visualizer ----

# The UI should contain
# 1. A title with the name of the app
titlePanel()

# 2. A sidebar and main panel for inputs (left) and outputs (right)
sidebarLayout(
  sidebarPanel(),
  mainPanel()
)

# 3. In the sidebar, instructions, text input (stock symbol), Enter date range, 
#    select log scale and adjustment for inflation

# instructions
helpText()

# text input 
textInput()

# Date range
dateRangeInput()

# checkboxes for log and inflation
checkboxInput()
checkboxInput()

# checkboxgroup for technical indicators
#checkboxGroupInput()

# Assemble the UI
ui = fluidPage()

# Helpful functions for the server

# get time series data
getSymbols(input$symb, src = 'yahoo', from = , to = , auto.assign = FALSE)

# plot chart series
chartSeries(,, theme = chartTheme('white'), type = 'line', log.scale = , TA = )

# Source helpers ----
source("helpers.R")

# User interface ----
ui <- fluidPage()

# Server logic ----
server <- function(input, output) {}

# Run the app
shinyApp(ui, server)
