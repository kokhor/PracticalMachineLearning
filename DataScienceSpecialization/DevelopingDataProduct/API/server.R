
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#
library(shiny)
library(lubridate)
library(ggplot2)
shinyServer( function(input, output) {
  output$plot1 <- renderPlot({
    selected.data <- kemaman[(month(kemaman$Date)==input$month & year(kemaman$Date)==input$year),]
    ggplot(data=selected.data, aes(x=selected.data$Hour, y=selected.data$API))+geom_smooth(color="blue")+labs(x="Hour",y="API Reading")
  })
}
)
