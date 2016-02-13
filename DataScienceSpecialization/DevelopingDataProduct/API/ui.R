library(shiny)
library(lubridate)
library(ggplot2)
kemaman <- read.csv("kemaman.csv")

shinyUI( fluidPage(
  headerPanel("Air Pollutant Index 2013(Aug)-2015(Feb)"),
  sidebarPanel(
    "Please select between Aug 2013 to Feb 2015(inclusive) to reactively view API Reading",
    selectInput("year", label= "Select Year",selected=2013, choices=c(2013,2014,2015)),
    selectInput("month", label= "Select Month",selected=8, choices=c(1,2,3,4,5,6,7,8,9,10,11,12)) 
  ),
  mainPanel(
    h3("Air Pollutant Index at Kemaman"),
    plotOutput("plot1")
  ))
)