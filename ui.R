library(shiny)
library(shinyDND)
shinyUI(
  fluidPage(
    h1("Matching Game of Histogram and Boxplot"),
    h2("Dragging the red letter of boxplot to the box of histogram"),
    fluidRow(
      column(3,
             h3("A"),
             list(tags$head(tags$style()), 
                  HTML('<img src="boxplot1.png", height= 200px"    
                    style="float:right"/>','<p style="color:red"></p>'))
                  ),
      column(3,
             h3("B"),
             list(tags$head(tags$style()), 
                  HTML('<img src="boxplot3.png", height= 200px"    
                       style="float:right"/>','<p style="color:red"></p>'))
                  ),
      column(3,
             h3("C"),
             list(tags$head(tags$style()), 
                  HTML('<img src="boxplot4.png", height= 200px"    
                    style="float:right"/>','<p style="color:red"></p>'))
                ),
      column(3,
             h3("D"),
             list(tags$head(tags$style()), 
                  HTML('<img src="boxplot2.png", height= 200px"    
                    style="float:right"/>','<p style="color:red"></p>'))
      )
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
             dropUI("div3", row_n = 1, col_n = 1,style = "background-color:yellow")),
      column(3,
             hr(),
             dropUI("div3", row_n = 1, col_n = 1,style = "background-color:pink")),
      column(3,
             hr(),
             dropUI("div3", row_n = 1, col_n = 1,style = "background-color:yellow")),
      column(3,
             hr(),
             dropUI("div3", row_n = 1, col_n = 1,style = "background-color:pink"))
    ),
    fluidRow(
      column(3,
             list(tags$head(tags$style()), 
                  HTML('<img src="hist1.png", height= 200px"    
                       style="float:right"/>','<p style="color:red"></p>'))
                  ),
      column(3,
             list(tags$head(tags$style()), 
                  HTML('<img src="hist2.png", height= 200px"    
                       style="float:right"/>','<p style="color:red"></p>'))
                  ),
      column(3,
             list(tags$head(tags$style()), 
                  HTML('<img src="hist3.png", height= 200px"    
                       style="float:right"/>','<p style="color:red"></p>'))
                  ),
      column(3,
             list(tags$head(tags$style()), 
                  HTML('<img src="hist4.png", height= 200px"    
                       style="float:right"/>','<p style="color:red"></p>'))
                  )
      ),
    sidebarPanel(actionButton("clear", "Show Answer")),
    fluidRow(
    mainPanel("Answer:", verbatimTextOutput("numPoint")))
    
))
