# Author: Nicholas Stewart
# Developing Data Products (Coursera Course)
# Date: January 8, 2019 (1:58 pm)
# -------------------------------------------------------------------------
# -------------------------------------------------------------------------

# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

# The shiny app sets up a slide for input (x) and raise the number e to that power as exp(x)
library(shiny)

shinyUI(fluidPage(
  titlePanel("Slider Exponentiation App"),
  sidebarLayout(
    sidebarPanel(
      h1("Move the Slider!"),
      sliderInput("slider2","Slide Me!",0,8,0)
    ),
    mainPanel(
      h3("Slider Value Exponentiated (exp()):"),
      textOutput("text1")
    )
  )
))


#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#
# The final result is output below after it has been processed as x (input), exp(x) output.

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input,output) {
  
  output$text1 = renderText(exp(input$slider2))   # output
  
})

