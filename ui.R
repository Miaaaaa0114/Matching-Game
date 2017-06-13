#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinythemes)
library(shinyDND)
shinyUI(fluidPage(
  h1("Matching Game of Histogram "),
  verbatimTextOutput("text1"),
  fluidRow(
    column(3,
           h3("A"),
      plotOutput("Boxplot1")),
    column(3,
            h3("B"),
        plotOutput("Boxplot2")),
    column(3,
           h3("C"),
        plotOutput("Boxplot3")),
    column(3,
           h3("D"),
        plotOutput("Boxplot4"))
    ),
  fluidRow(
    column(3,
           div(dragUI("div5","A", style = "background-color:red", 
                      class = "dragelement"), style = "margin-left:-70%")
    ),
    column(3,
           div(dragUI("div4","B", style = "background-color:red", 
                      class = "dragelement"), style = "margin-left:-40%")
    ),   
    column(3,
           div(dragUI("div3","C", style = "background-color:red", 
                      class = "dragelement"), style = "margin-left:40%")
    ),    
    column(3,
           div(dragUI("div2","D", style = "background-color:red", 
                      class = "dragelement"), style = "margin-left:70%")
    )
  ),
  fluidRow(
    column(3,
           hr(),
           dropUI("div7", row_n = 1, col_n = 1,style = "background-color:yellow")),
    column(3,
           hr(),
           dropUI("div8", row_n = 1, col_n = 1,style = "background-color:pink")),
    column(3,
           hr(),
           dropUI("div9", row_n = 1, col_n = 1,style = "background-color:yellow")),
    column(3,
           hr(),
           dropUI("div6", row_n = 1, col_n = 1,style = "background-color:pink"))
      
    ),
  fluidRow(
    column(3,
      plotOutput("Histplot1")
    ),
    column(3,
      plotOutput("Histplot2")
           ),
    column(3,
           plotOutput("Histplot3")
           ),
    column(3,
           plotOutput("Histplot4"))
  ),
  fluidRow(
    column(3,
           verbatimTextOutput('out1')),
    column(3,
           verbatimTextOutput('out2')),
    column(3,
           verbatimTextOutput('out3')),
    column(3,
           verbatimTextOutput('out4'))
  ),
  
  fluidRow(
    column(8,
           sidebarPanel(actionButton("hhhhh", "Check")),
           mainPanel("Answer & Points:", verbatimTextOutput("numPoint"))),
    column(4,
           h3("Please check answers before going to next level!")),
  fluidPage(
           actionButton("clear", "Next Level"),
           verbatimTextOutput("numPoints"))
    )
)
)
