# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#
library(shiny)
shinyUI(fluidPage(
    titlePanel("Plotting random numbers"),
    sidebarLayout(
        sidebarPanel(
          numericInput("numeric","How many Random numbers?",value=1000,
                       min=1,max=1000,step=1),
          sliderInput("sliderX","Pick minimum and maximum values",-100,100,value=c(-50,50)),
          sliderInput("sliderY","Pick minimum and maximum values",-100,100,value=c(-50,50)),
          checkboxInput("show_xlab","Show/Hide X axis label",value=TRUE),
          checkboxInput("show_ylab","Show/Hide Y axis label",value=TRUE),
          checkboxInput("show_title","Show/Hide title")
           ),
        mainPanel(
          h3("Graphic of points"),
          plotOutput("plot1")
        )
    )
))

        