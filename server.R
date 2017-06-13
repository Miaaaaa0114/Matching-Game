#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

  observe({
if ( input$clear == 0){
  output$Boxplot1 <- renderPlot({      
    dataset<- c(1,2,2,2,2,5,2,3,2,2,2, 20, 21, 22, 23, 24, 25, 26, 27, 27, 40,41,42,44,45,43,66,67,68,69, 88, 89,90, 102)
    boxplot(dataset, ylim = c(0, 120), 
            ylab = 'Y', xlab = 'x',col = "red", border = 'orange', background = 'black')
  })
  output$Histplot3 <- renderPlot(
    {dataset<-c(1,2,2,2,2,5,2,3,2,2,2, 20, 21, 22, 23, 24, 25, 26, 27, 27, 40,41,42,44,45,43,66,67,68,69, 88, 89,90, 102)
    hist(dataset, ylim = c(0, 15), xlim = c(0, 120), ylab = 'Y', xlab = 'X', col = 'grey',
         border = 'red')
    })
  output$Boxplot2 <- renderPlot({      
    dataset<- c(2,2,2, 20, 21,  27, 27, 40,41,42,44,45,43,66,67,68,69, 88, 89,90, 102, 100, 100, 100, 100, 102, 101, 
                101, 111, 120, 114, 113, 112, 114, 115)
    boxplot(dataset, ylim = c(0, 120), 
            ylab = 'Y', xlab = 'x',col = "red", border = 'orange', background = 'black')
  })
  output$Histplot2 <- renderPlot(
    {dataset<-c(2,2,2, 20, 21,  27, 27, 40,41,42,44,45,43,66,67,68,69, 88, 89,90, 102, 100, 100, 100, 100, 102, 101, 101, 
                111, 120, 114, 113, 112, 114, 115)
    hist(dataset, ylim = c(0, 15), xlim = c(0, 120), ylab = 'Y', xlab = 'X', col = 'grey',
         border = 'red')
    })
  output$Boxplot3 <- renderPlot({      
    dataset<- c(2,2,5,2,3,2,2,2, 20, 40,41,42)
    boxplot(dataset, ylim = c(0, 120), 
            ylab = 'Y', xlab = 'x',col = "red", border = 'orange', background = 'black')
  })
  output$Histplot4 <- renderPlot(
    {dataset<-c(2,2,5,2,3,2,2,2, 20, 40,41,42)
    hist(dataset, ylim = c(0, 15), xlim = c(0, 120), ylab = 'Y', xlab = 'X', col = 'grey',
         border = 'red')
    })
  output$Boxplot4 <- renderPlot({      
    dataset<- c(1,2,2, 89,90, 102)
    boxplot(dataset, ylim = c(0, 120), 
            ylab = 'Y', xlab = 'x',col = "red", border = 'orange', background = 'black')
  })
  output$Histplot1 <- renderPlot(
    {dataset<-c(1,2,2, 89,90, 102)
    hist(dataset, ylim = c(0, 15), xlim = c(0, 120), ylab = 'Y', xlab = 'X', col = 'grey',
         border = 'red')
    })
  output$text1 <- renderText({paste("Level 1. \nWelcome to Matching Game.\nThe purpose of this game is helping students understand",
                                    "how would histogram affects the boxplot. \nPlease drag the letters indicating the boxplots into the boxes indicating histograms",
                                    "\nAfter dragging, please CLICK check before going to next level")}
  )
    }
    else if (input$clear == 1) {
      output$Boxplot1 <- renderPlot({      
        dataset<- c(2, 20, 21, 22, 23, 24, 25, 26, 27, 27,68,69, 88, 89,90, 102)
        boxplot(dataset, ylim = c(0, 120), 
                ylab = 'Y', xlab = 'x',col = "red", border = 'orange', background = 'black')
      })
      output$Histplot3 <- renderPlot(
        {dataset<-c(2, 20, 21, 22, 23, 24, 25, 26, 27, 27,68,69, 88, 89,90, 102)
        hist(dataset, ylim = c(0, 15), xlim = c(0, 120), ylab = 'Y', xlab = 'X', col = 'pink',
             border = 'red')
        })
      output$Boxplot2 <- renderPlot({      
        dataset<- c(2,2,2, 20, 21,  27, 27, 40,41,42,44,45,43,66,67,40,41,42,44,45,43,66,67,
                    68,69, 88, 89,90, 102, 100, 100, 100, 100, 102, 101, 40,41,42,44,45,43,66,67,
                    101, 111, 120, 114, 113, 112, 114, 115)
        boxplot(dataset, ylim = c(0, 120), 
                ylab = 'Y', xlab = 'x',col = "red", border = 'orange', background = 'black')
      })
      output$Histplot2 <- renderPlot(
        {dataset<-c(1,2,2,2,2, 8, 11, 12, 15, 11,5,2,3,2,2,42,44,45,43,66,67,68,69, 88, 89,90, 102)
        hist(dataset, ylim = c(0, 15), xlim = c(0, 120), ylab = 'Y', xlab = 'X', col = 'pink',
             border = 'red')
        })
      output$Boxplot3 <- renderPlot({      
        dataset<- c(1,2,2,2,2, 8, 11, 12, 15, 11,5,2,3,2,2,42,44,45,43,66,67,68,69, 88, 89,90, 102)
        boxplot(dataset, ylim = c(0, 120), 
                ylab = 'Y', xlab = 'x',col = "red", border = 'orange', background = 'black')
      })
      output$Histplot4 <- renderPlot(
        {dataset<-c(2,2,2, 20, 21,  27, 27, 40,41,42,44,45,43,66,67,40,41,42,44,45,43,66,67,
                    68,69, 88, 89,90, 102, 100, 100, 100, 100, 102, 101, 40,41,42,44,45,43,66,67,
                    101, 111, 120, 114, 113, 112, 114, 115)
        hist(dataset, ylim = c(0, 15), xlim = c(0, 120), ylab = 'Y', xlab = 'X', col = 'pink',
             border = 'red')
        })
      output$Boxplot4 <- renderPlot({      
        dataset<- c(1,2,2, 89,90, 102, 88, 89,90, 102, 100, 100, 100, 100, 102, 101, 29, 30, 35, 40, 44, 45)
        boxplot(dataset, ylim = c(0, 120), 
                ylab = 'Y', xlab = 'x',col = "red", border = 'orange', background = 'black')
      })
      output$Histplot1 <- renderPlot(
        {dataset<-c(1,2,2, 89,90, 102, 88, 89,90, 102, 100, 100, 100, 100, 102, 101, 29, 30, 35, 40, 44, 45)
        hist(dataset, ylim = c(0, 15), xlim = c(0, 120), ylab = 'Y', xlab = 'X', col = 'pink',
             border = 'red')
        })
      output$text1 <- renderText({paste("Level 2.  \nWelcome to Matching Game.\nThe purpose of this game is helping students understand",
                                        "how would histogram affects the boxplot. \nPlease drag the letters indicating the boxplots into the boxes indicating histograms",
                                        "\nAfter dragging, please CLICK check before going to next level")})
    }
    else if (input$clear == 2){
      output$Boxplot1 <- renderPlot({      
        dataset<- c(55,55,55,55,55,55,55,5,55,5,55,5,5, 100, 100, 100, 100, 100, 100)
        boxplot(dataset, ylim = c(0, 120), 
                ylab = 'Y', xlab = 'x',col = "red", border = 'orange', background = 'black')
      })
      output$Histplot1 <- renderPlot(
        {dataset<-c(55,55,55,55,45,45,45,45,5,55,5,5, 100, 100, 100, 100, 100, 100)
        hist(dataset, ylim = c(0, 15), xlim = c(0, 120), ylab = 'Y', xlab = 'X', col = 'yellow',
             border = 'red')
        })

      output$Boxplot2 <- renderPlot({      
        dataset<- c(10, 10, 10, 10, 10, 10, 15, 12, 13, 12, 14, 15, 35, 30, 30, 30,
                    30, 30, 30, 30,30,30, 30, 30,30, 50, 50, 50)
        boxplot(dataset, ylim = c(0, 120), 
                ylab = 'Y', xlab = 'x',col = "red", border = 'orange', background = 'black')
      })
      output$Histplot2 <- renderPlot(
        {dataset<-c(10, 10, 10, 10, 10, 10, 15, 12, 13, 12, 14, 15, 35, 30, 30, 30,
                    30, 30, 30, 30,30,30, 30, 30,30, 50, 50, 50)
        hist(dataset, ylim = c(0, 15), xlim = c(0, 120), ylab = 'Y', xlab = 'X', col = 'yellow',
             border = 'red')
        })
      output$Boxplot3 <- renderPlot({      
        dataset<- c(1,2,2,2,2,5,2,3,2,2,42,44,45,43,66,67,68,69, 88, 89,90, 102)
        boxplot(dataset, ylim = c(0, 120), 
                ylab = 'Y', xlab = 'x',col = "red", border = 'orange', background = 'black')
      })
      output$Histplot3 <- renderPlot(
        {dataset<-c(1,2,2,2,2,5,2,3,2,2,42,44,45,43,66,67,68,69, 88, 89,90, 102)
        hist(dataset, ylim = c(0, 15), xlim = c(0, 120), ylab = 'Y', xlab = 'X', col = 'yellow',
             border = 'red')
        })
      output$Histplot4 <- renderPlot(
        {dataset<-c(66,67, 2,2,2,2,5,2,3,2,2,42,44,45,43,66,30, 30,30, 30, 30, 30,30,30, 30,
                    101, 111, 120, 114, 113, 112, 114, 115)
        hist(dataset, ylim = c(0, 15), xlim = c(0, 120), ylab = 'Y', xlab = 'X', col = 'yellow',
             border = 'red')
        })
      output$Boxplot4 <- renderPlot({      
        dataset<- c(66,67, 2,2,2,2,5,2,3,2,2,42,44,45,43,66, 30, 30,30, 30, 30, 30,30,30, 30,
                    101, 111, 120, 114, 113, 112, 114, 115)
        boxplot(dataset, ylim = c(0, 120), 
                ylab = 'Y', xlab = 'x',col = "red", border = 'orange', background = 'black')
      })
      output$text1 <- renderText({paste("Level 3.  \nWelcome to Matching Game.\nThe purpose of this game is helping students understand",
                                        "how would histogram affects the boxplot. \nPlease drag the letters indicating the boxplots into the boxes indicating histograms",
                                        "\nAfter dragging, please CLICK check before going to next level")})
    }
   else if (input$clear ==3){
     output$Boxplot1 <- renderPlot({      
       dataset<- c(20, 21, 22, 23, 24, 25, 26, 34, 35, 34, 45, 44, 46, 56, 55, 57, 78, 78, 79)
       boxplot(dataset, ylim = c(0, 120), 
               ylab = 'Y', xlab = 'x',col = "red", border = 'orange', background = 'black')
     })
     output$Histplot4 <- renderPlot(
       {dataset<-c(20, 21, 22, 23, 24, 25, 26, 34, 35, 34, 45, 44, 46, 56, 55, 57, 78, 78, 79)
       hist(dataset, ylim = c(0, 15), xlim = c(0, 120), ylab = 'Y', xlab = 'X', col = 'orange',
            border = 'red')
       })
     output$Boxplot2 <- renderPlot({      
       dataset<- c(1,2,3,4,12,13,14,22,23,29,31,45,46,47,48,49,50,56,57,67,68,69,70,71,71,72,80, 91, 92, 100)
       boxplot(dataset, ylim = c(0, 120), 
               ylab = 'Y', xlab = 'x',col = "red", border = 'orange', background = 'black')
     })
     output$Histplot3 <- renderPlot(
       {dataset<-c(1,2,3,4,12,13,14,22,23,29,31,45,46,47,48,49,50,56,57,67,68,69,70,71,71,72,80, 91, 92, 100)
       hist(dataset, ylim = c(0, 15), xlim = c(0, 120), ylab = 'Y', xlab = 'X', col = 'orange',
            border = 'red')
       })
     output$Boxplot3 <- renderPlot({      
       dataset<- c(102, 103, 104, 105, 106, 107, 108, 109, 120, 112, 113, 89, 78, 77, 76, 75, 64, 63, 63, 62, 53, 54, 43,44, 33, 22, 21,2, 1,4)
       boxplot(dataset, ylim = c(0, 120), 
               ylab = 'Y', xlab = 'x',col = "red", border = 'orange', background = 'black')
     })
     output$Histplot1 <- renderPlot(
       {dataset<-c(102, 103, 104, 105, 106, 107, 108, 109, 120, 112, 113, 89, 78, 77, 76, 75, 64, 63, 63, 62, 53, 54, 43,44, 33, 22, 21,2, 1,4)
       hist(dataset, ylim = c(0, 15), xlim = c(0, 120), ylab = 'Y', xlab = 'X', col = 'orange',
            border = 'red')})
     output$Boxplot4 <- renderPlot({      
       dataset<- c(66,67, 2,2,2,2,5,2,3,2,2,42,44,45,43,66, 30, 30,30, 30, 30, 30,30,30, 30,
                   101, 111, 120, 114, 113, 112, 114, 115)
       boxplot(dataset, ylim = c(0, 120), 
               ylab = 'Y', xlab = 'x',col = "red", border = 'orange', background = 'black')
     })
     output$Histplot2 <- renderPlot(
       {dataset<-c(66,67, 2,2,2,2,5,2,3,2,2,42,44,45,43,66, 30, 30,30, 30, 30, 30,30,30, 30,
                   101, 111, 120, 114, 113, 112, 114, 115)
       hist(dataset, ylim = c(0, 15), xlim = c(0, 120), ylab = 'Y', xlab = 'X', col = 'orange',
            border = 'red')
       })
     output$text1 <- renderText({paste("Level 4.  \nWelcome to Matching Game.\nThe purpose of this game is helping students understand",
                                       "how would histogram affects the boxplot. \nPlease drag the letters indicating the boxplots into the boxes indicating histograms",
                                       "\nAfter dragging, please CLICK check before going to next level")})
   }
    else if (input$clear == 4){
      output$Boxplot1 <- renderPlot({      
        dataset<- c(23, 12, 34, 56, 45, 35, 67, 45, 78, 67, 98, 102, 20, 22, 
                    34, 35, 45, 56, 78, 102, 103, 120, 111, 12)
        boxplot(dataset, ylim = c(0, 120), 
                ylab = 'Y', xlab = 'x',col = "red", border = 'orange', background = 'black')
      })
      output$Histplot2 <- renderPlot(
        {dataset<-c(23, 12, 34, 56, 45, 35, 67, 45, 78, 67, 98, 102, 20, 22, 
                    34, 35, 45, 56, 78, 102, 103, 120, 111, 12)
        hist(dataset, ylim = c(0, 15), xlim = c(0, 120), ylab = 'Y', xlab = 'X', col = 'brown',
             border = 'red')
        })
      output$Boxplot2 <- renderPlot({      
        dataset<- c(31,45,46,47,48,49,50,56,57,67,68,69,70,71,71,72,80, 91, 92, 100)
        boxplot(dataset, ylim = c(0, 120), 
                ylab = 'Y', xlab = 'x',col = "red", border = 'orange', background = 'black')
      })
      output$Histplot1 <- renderPlot(
        {dataset<-c(31,45,46,47,48,49,50,56,57,67,68,69,70,71,71,72,80, 91, 92, 100)
        hist(dataset, ylim = c(0, 15), xlim = c(0, 120), ylab = 'Y', xlab = 'X', col = 'brown',
             border = 'red')})
      output$Boxplot3 <- renderPlot({      
        dataset<- c(102, 103, 104, 105, 106, 107, 108, 109, 120, 112, 113, 89,102,
                    103, 104, 105, 106, 107, 108, 109, 120, 112, 113, 89,102, 103, 
                    104, 105, 106, 107, 108, 109, 120, 112, 113, 89,102, 103, 104, 
                    105, 106, 107, 108, 109, 120, 112, 113, 89, 78, 77, 76, 75, 64, 
                    63, 63, 62, 53, 54, 43,44, 33, 22, 21,2, 1,4)
        boxplot(dataset, ylim = c(0, 120), 
                ylab = 'Y', xlab = 'x',col = "red", border = 'orange', background = 'black')
      })
      output$Histplot4 <- renderPlot(
        {dataset<-c(102, 103, 104, 105, 106, 107, 108, 109, 120, 112, 113, 89,102,
                    103, 104, 105, 106, 107, 108, 109, 120, 112, 113, 89,102, 103, 
                    104, 105, 106, 107, 108, 109, 120, 112, 113, 89,102, 103, 104, 
                    105, 106, 107, 108, 109, 120, 112, 113, 89, 78, 77, 76, 75, 64, 
                    63, 63, 62, 53, 54, 43,44, 33, 22, 21,2, 1,4)
        hist(dataset, ylim = c(0, 15), xlim = c(0, 120), ylab = 'Y', xlab = 'X', col = 'brown',
             border = 'red')
        })
      output$Boxplot4 <- renderPlot({      
        dataset<- c(67, 68, 65, 56, 67, 54, 56, 34, 34, 34, 56, 56, 67, 78, 90,
                    32, 23, 24, 12, 13, 14, 15, 22)
        boxplot(dataset, ylim = c(0, 120), 
                ylab = 'Y', xlab = 'x',col = "red", border = 'orange', background = 'black')
      })
      output$Histplot3 <- renderPlot(
        {dataset<-c(67, 68, 65, 56, 67, 54, 56, 34, 34, 34, 56, 56, 67, 78, 90,
                    32, 23, 24, 12, 13, 14, 15, 22)
        hist(dataset, ylim = c(0, 15), xlim = c(0, 120), ylab = 'Y', xlab = 'X', col = 'brown',
             border = 'red')
        })
      output$text1 <- renderText({paste("Level 5.  \nWelcome to Matching Game.\nThe purpose of this game is helping students understand",
                                        "how would histogram affects the boxplot. \nPlease drag the letters indicating the boxplots into the boxes indicating histograms",
                                        "\nAfter dragging, please CLICK check before going to next level")})
    }
    else if (input$clear == 5) {
      output$Boxplot1 <- renderPlot({      
        dataset<- c(11, 12, 12, 13, 14, 15, 16, 17, 18, 20, 21, 23,
                    34, 45, 56, 56, 57, 58, 39, 90, 89, 78, 102, 120)
        boxplot(dataset, ylim = c(0, 120), 
                ylab = 'Y', xlab = 'x',col = "red", border = 'orange', background = 'black')
      })
      output$Histplot2 <- renderPlot(
        {dataset<-c(11, 12, 12, 13, 14, 15, 16, 17, 18, 20, 21, 23,
                    34, 45, 56, 56, 57, 58, 39, 90, 89, 78, 102, 120)
        hist(dataset, ylim = c(0, 15), xlim = c(0, 120), ylab = 'Y', xlab = 'X', col = 'green',
             border = 'red')
        })
      output$Boxplot2 <- renderPlot({      
        dataset<- c(31,45,46,47,48,49,50,56,57,
                    31,45,46,47,48,49,50,56,57,
                    31,45,46,47,48,49,50,56,57,
                    31,45,46,47,48,49,50,56,57,
                    90, 89, 78, 102, 120, 90, 89, 78, 102, 120, 90, 89, 78, 102, 120,
                    67,68,69,70,71,71,72,80, 91, 92, 100)
        boxplot(dataset, ylim = c(0, 120), 
                ylab = 'Y', xlab = 'x',col = "red", border = 'orange', background = 'black')
      })
      output$Histplot1 <- renderPlot(
        {dataset<-c(31,45,46,47,48,49,50,56,57,
                    31,45,46,47,48,49,50,56,57,
                    31,45,46,47,48,49,50,56,57,
                    31,45,46,47,48,49,50,56,57,
                    90, 89, 78, 102, 120, 90, 89, 78, 102, 120, 90, 89, 78, 102, 120,
                    67,68,69,70,71,71,72,80, 91, 92, 100)
        hist(dataset, ylim = c(0, 15), xlim = c(0, 120), ylab = 'Y', xlab = 'X', col = 'green',
             border = 'red')})
      output$Boxplot3 <- renderPlot({      
        dataset<- c(102, 103, 104, 105, 106, 107, 108, 109, 120, 112, 113, 89,102,
                    105, 106, 107, 108, 109, 120, 112, 113, 89, 78, 77, 76, 75, 64, 
                    63, 63, 62, 53, 54, 43,44, 33, 22, 21,2, 1,4)
        boxplot(dataset, ylim = c(0, 120), 
                ylab = 'Y', xlab = 'x',col = "red", border = 'orange', background = 'black')
      })
      output$Histplot3 <- renderPlot(
        {dataset<-c(102, 103, 104, 105, 106, 107, 108, 109, 120, 112, 113, 89,102,
                    105, 106, 107, 108, 109, 120, 112, 113, 89, 78, 77, 76, 75, 64, 
                    63, 63, 62, 53, 54, 43,44, 33, 22, 21,2, 1,4)
        hist(dataset, ylim = c(0, 15), xlim = c(0, 120), ylab = 'Y', xlab = 'X', col = 'green',
             border = 'red')
        })
      output$Boxplot4 <- renderPlot({      
        dataset<- c(67, 68, 65, 13, 14, 
                    109, 120, 112, 113, 89, 78, 77, 76, 75,
                    109, 120, 112, 113, 89, 78, 77, 76, 75,15, 22)
        boxplot(dataset, ylim = c(0, 120), 
                ylab = 'Y', xlab = 'x',col = "red", border = 'orange', background = 'black')
      })
      output$Histplot4 <- renderPlot(
        {dataset<-c(67, 68, 65, 13, 14, 
                    109, 120, 112, 113, 89, 78, 77, 76, 75,
                    109, 120, 112, 113, 89, 78, 77, 76, 75,15, 22)
        hist(dataset, ylim = c(0, 15), xlim = c(0, 120), ylab = 'Y', xlab = 'X', col = 'green',
             border = 'red')
        })
      output$text1 <- renderText({paste("Level 6.  \nWelcome to Matching Game.\nThe purpose of this game is helping students understand",
                                        "how would histogram affects the boxplot. \nPlease drag the letters indicating the boxplots into the boxes indicating histograms",
                                        "\nAfter dragging, please CLICK check before going to next level")})
    }
    else if (input$clear == 6){
      output$Boxplot1 <- renderPlot({      
        dataset<- c(12, 14, 12, 14, 23, 23, 24, 25, 56, 45, 56, 57, 58, 60, 54, 55, 56, 78,79)
        boxplot(dataset, ylim = c(0, 120), 
                ylab = 'Y', xlab = 'x',col = "red", border = 'orange', background = 'black')
      })
      output$Histplot3 <- renderPlot(
        {dataset<-c(12, 14, 12, 14, 23, 23, 24, 25, 56, 45, 56, 57, 58, 60, 54, 55, 56, 78,79)
        hist(dataset, ylim = c(0, 15), xlim = c(0, 120), ylab = 'Y', xlab = 'X', col = 'black',
             border = 'red')
        })
      
      output$Boxplot2 <- renderPlot({      
        dataset<- c(110, 110, 110, 110, 110, 110, 115, 112, 113, 112, 114, 115, 3, 5, 10, 30, 30,
                    30,30, 30, 30,30, 50, 50, 50)
        boxplot(dataset, ylim = c(0, 120), 
                ylab = 'Y', xlab = 'x',col = "red", border = 'orange', background = 'black')
      })
      output$Histplot2 <- renderPlot(
        {dataset<-c(110, 110, 110, 110, 110, 110, 115, 112, 113, 112, 114, 115, 3, 5, 10, 30, 30,
                    30,30, 30, 30,30, 50, 50, 50)
        hist(dataset, ylim = c(0, 15), xlim = c(0, 120), ylab = 'Y', xlab = 'X', col = 'black',
             border = 'red')
        })
      output$Boxplot3 <- renderPlot({      
        dataset<- c(1,2,2,2,2,5,2,3,2,2,42,44,45,43,66,67,68,69, 88, 89,90, 102,2,42,44,45,43,66,67)
        boxplot(dataset, ylim = c(0, 120), 
                ylab = 'Y', xlab = 'x',col = "red", border = 'orange', background = 'black')
      })
      output$Histplot1 <- renderPlot(
        {dataset<-c(1,2,2,2,2,5,2,3,2,2,42,44,45,43,66,67,68,69, 88, 89,90, 102,2,42,44,45,43,66,67)
        hist(dataset, ylim = c(0, 15), xlim = c(0, 120), ylab = 'Y', xlab = 'X', col = 'black',
             border = 'red')
        })
      output$Histplot4 <- renderPlot(
        {dataset<-c(66,67, 2, 120, 114, 113, 112, 114, 115)
        hist(dataset, ylim = c(0, 15), xlim = c(0, 120), ylab = 'Y', xlab = 'X', col = 'black',
             border = 'red')
        })
      output$Boxplot4 <- renderPlot({      
        dataset<- c(66,67, 2, 120, 114, 113, 112, 114, 115)
        boxplot(dataset, ylim = c(0, 120), 
                ylab = 'Y', xlab = 'x',col = "red", border = 'orange', background = 'black')
      })
      output$text1 <- renderText({paste("Level 7.  \nWelcome to Matching Game.\nThe purpose of this game is helping students understand",
                                        "how would histogram affects the boxplot. \nPlease drag the letters indicating the boxplots into the boxes indicating histograms",
                                        "\nAfter dragging, please CLICK check before going to next level")})
    }
    else if (input$clear == 7){
      output$Boxplot1 <- renderPlot({      
        dataset<- c(12, 14, 12, 14, 23, 23, 24, 25, 56, 45,
                    56, 57, 58, 60, 54, 55, 56, 78,
                    56, 57, 58, 60, 54, 55, 56, 78,
                    1, 1, 2, 3, 4, 5, 12, 23, 56, 57, 58, 60, 54, 55, 56, 78,79)
        boxplot(dataset, ylim = c(0, 120), 
                ylab = 'Y', xlab = 'x',col = "red", border = 'orange', background = 'black')
      })
      output$Histplot2 <- renderPlot(
        {dataset<-c(12, 14, 12, 14, 23, 23, 24, 25, 56, 45,
                    56, 57, 58, 60, 54, 55, 56, 78,
                    56, 57, 58, 60, 54, 55, 56, 78,
                    1, 1, 2, 3, 4, 5, 12, 23, 56, 57, 58, 60, 54, 55, 56, 78,79)
        hist(dataset, ylim = c(0, 15), xlim = c(0, 120), ylab = 'Y', xlab = 'X', col = 'pink',
             border = 'red')
        })
      
      output$Boxplot2 <- renderPlot({      
        dataset<- c(110, 110, 110, 10, 30, 30, 31, 32, 35, 34, 35,  36, 40, 
                    30,30, 30, 30,30, 50, 50, 50)
        boxplot(dataset, ylim = c(0, 120), 
                ylab = 'Y', xlab = 'x',col = "red", border = 'orange', background = 'black')
      })
      output$Histplot1 <- renderPlot(
        {dataset<-c(110, 110, 110, 10, 30, 30, 31, 32, 35, 34, 35,  36, 40, 
                    30,30, 30, 30,30, 50, 50, 50)
        hist(dataset, ylim = c(0, 15), xlim = c(0, 120), ylab = 'Y', xlab = 'X', col = 'pink',
             border = 'red')
        })
      output$Boxplot3 <- renderPlot({      
        dataset<- c(1,2,2,2,2,5,2,3,2,2,42,
                    33, 34, 35, 36, 37, 38, 44,45,43,66,67,68,69, 88, 89,90, 102,2,42,44,45,43,66,67)
        boxplot(dataset, ylim = c(0, 120), 
                ylab = 'Y', xlab = 'x',col = "red", border = 'orange', background = 'black')
      })
      output$Histplot3 <- renderPlot(
        {dataset<-c(1,2,2,2,2,5,2,3,2,2,42,
                    33, 34, 35, 36, 37, 38, 44,45,43,66,67,68,69, 88, 89,90, 102,2,42,44,45,43,66,67)
        hist(dataset, ylim = c(0, 15), xlim = c(0, 120), ylab = 'Y', xlab = 'X', col = 'pink',
             border = 'red')
        })
      output$Histplot4 <- renderPlot(
        {dataset<-c(66,67, 2, 120, 114, 113, 42,44,45,43,66,67,68,69, 88, 89,90,112, 114, 115)
        hist(dataset, ylim = c(0, 15), xlim = c(0, 120), ylab = 'Y', xlab = 'X', col = 'pink',
             border = 'red')
        })
      output$Boxplot4 <- renderPlot({      
        dataset<- c(66,67, 2, 120, 114, 113, 42,44,45,43,66,67,68,69, 88, 89,90,112, 114, 115)
        boxplot(dataset, ylim = c(0, 120), 
                ylab = 'Y', xlab = 'x',col = "red", border = 'orange', background = 'pink')
      })
      output$text1 <- renderText({paste("Level 8.  \nWelcome to Matching Game.\nThe purpose of this game is helping students understand",
                                        "how would histogram affects the boxplot. \nPlease drag the letters indicating the boxplots into the boxes indicating histograms",
                                        "\nAfter dragging, please CLICK check before going to next level")})
    }
    else if (input$clear == 8) {
      output$Boxplot1 <- renderPlot({      
        dataset<- c(12, 13, 14, 13, 15, 23, 23, 24, 25, 34, 35, 36, 37, 38, 40, 56, 57, 58, 58, 59, 56, 55,44,56, 67, 68, 78, 79, 80)
        boxplot(dataset, ylim = c(0, 120), 
                ylab = 'Y', xlab = 'x',col = "red", border = 'orange', background = 'black')
      })
      output$Histplot2 <- renderPlot(
        {dataset<-c(12, 13, 14, 13, 15, 23, 23, 24, 25, 34, 35, 36, 37, 38, 40, 56, 57, 58, 58, 59, 56, 55,44,56, 67, 68, 78, 79, 80)
        hist(dataset, ylim = c(0, 15), xlim = c(0, 120), ylab = 'Y', xlab = 'X', col = 'yellow',
             border = 'red')
        })
      
      output$Boxplot2 <- renderPlot({      
        dataset<- c(12, 12, 3, 4, 5, 4, 6, 34, 45, 56, 45, 78, 98, 67, 50, 20, 120, 11,111, 102,13)
        boxplot(dataset, ylim = c(0, 120), 
                ylab = 'Y', xlab = 'x',col = "red", border = 'orange', background = 'black')
      })
      output$Histplot1 <- renderPlot(
        {dataset<-c(12, 12, 3, 4, 5, 4, 6, 34, 45, 56, 45, 78, 98, 67, 50, 20, 120, 11,111, 102,13)
        hist(dataset, ylim = c(0, 15), xlim = c(0, 120), ylab = 'Y', xlab = 'X', col = 'yellow',
             border = 'red')
        })
      output$Boxplot3 <- renderPlot({      
        dataset<- c(33, 34, 35, 36, 37, 38, 
                    44,45,43,66,67,68,69, 88, 
                    89,90, 102,2,42,44,45,43,66,67)
        boxplot(dataset, ylim = c(0, 120), 
                ylab = 'Y', xlab = 'x',col = "red", border = 'orange', background = 'black')
      })
      output$Histplot3 <- renderPlot(
        {dataset<-c(33, 34, 35, 36, 37, 38, 
                    44,45,43,66,67,68,69, 88, 
                    89,90, 102,2,42,44,45,43,66,67)
        hist(dataset, ylim = c(0, 15), xlim = c(0, 120), ylab = 'Y', xlab = 'X', col = 'yellow',
             border = 'red')
        })
      output$Histplot4 <- renderPlot(
        {dataset<-c(66, 114, 115,
                    44,45,43,66,67,68,69, 88, 
                    3, 4, 5, 4, 6, 34, 45, 56, 45, 78, 98)
        hist(dataset, ylim = c(0, 15), xlim = c(0, 120), ylab = 'Y', xlab = 'X', col = 'yellow',
             border = 'red')
        })
      output$Boxplot4 <- renderPlot({      
        dataset<- c(66, 114, 115,
                    44,45,43,66,67,68,69, 88, 
                    3, 4, 5, 4, 6, 34, 45, 56, 45, 78, 98)
        boxplot(dataset, ylim = c(0, 120), 
                ylab = 'Y', xlab = 'x',col = "red", border = 'orange', background = 'yellow')
      })
      output$text1 <- renderText({paste("Level 9.  \nWelcome to Matching Game.\nThe purpose of this game is helping students understand",
                                        "how would histogram affects the boxplot. \nPlease drag the letters indicating the boxplots into the boxes indicating histograms",
                                        "\nAfter dragging, please CLICK check before going to next level")})
    }
    else if (input$clear == 9){
      output$Boxplot1 <- renderPlot({      
        dataset<- c(12,80,3, 4, 5, 4, 6, 34, 45, 56, 45, 78, 98 )
        boxplot(dataset, ylim = c(0, 120), 
                ylab = 'Y', xlab = 'x',col = "red", border = 'orange', background = 'black')
      })
      output$Histplot1 <- renderPlot(
        {dataset<-c(12,80,3, 4, 5, 4, 6, 34, 45, 56, 45, 78, 98)
        hist(dataset, ylim = c(0, 15), xlim = c(0, 120), ylab = 'Y', xlab = 'X', col = 'grey',
             border = 'red')
        })
      
      output$Boxplot2 <- renderPlot({      
        dataset<- c(12, 12, 3, 4, 50, 20, 120, 11,111, 102,13, 12,80,3, 4, 5, 4, 6, 34, 45, 56, 45, 78, 98)
        boxplot(dataset, ylim = c(0, 120), 
                ylab = 'Y', xlab = 'x',col = "red", border = 'orange', background = 'black')
      })
      output$Histplot3 <- renderPlot(
        {dataset<-c(12, 12, 3, 4,50, 20, 120, 11,111, 102,13, 12,80,3, 4, 5, 4, 6, 34, 45, 56, 45, 78, 98)
        hist(dataset, ylim = c(0, 15), xlim = c(0, 120), ylab = 'Y', xlab = 'X', col = 'grey',
             border = 'red')
        })
      output$Boxplot3 <- renderPlot({      
        dataset<- c(33, 34, 35, 36, 37, 38, 33, 34, 35, 36, 37, 38,33, 34, 35, 36, 37, 38,
                    44,45,43,66,67,68,69, 88, 67,68,69, 88,67,68,69, 88,102,2,42,44,45,
                    89,90, 102,2,42,44,45,43,66,67)
        boxplot(dataset, ylim = c(0, 120), 
                ylab = 'Y', xlab = 'x',col = "red", border = 'orange', background = 'black')
      })
      output$Histplot4 <- renderPlot(
        {dataset<-c(33, 34, 35, 36, 37, 38, 33, 34, 35, 36, 37, 38,33, 34, 35, 36, 37, 38,
                    44,45,43,66,67,68,69, 88, 67,68,69, 88,67,68,69, 88,102,2,42,44,45,
                    89,90, 102,2,42,44,45,43,66,67)
        hist(dataset, ylim = c(0, 15), xlim = c(0, 120), ylab = 'Y', xlab = 'X', col = 'grey',
             border = 'red')
        })
      output$Histplot2 <- renderPlot(
        {dataset<-c(66, 114, 115,
                    44,45,43,66,67,68,69, 88,  44,45,43,66,67,68,69, 88, 
                    3, 4, 5, 4, 6, 34, 45,
                    3, 4, 5, 4, 6, 34, 45, 56, 45, 78, 98)
        hist(dataset, ylim = c(0, 15), xlim = c(0, 120), ylab = 'Y', xlab = 'X', col = 'grey',
             border = 'red')
        })
      output$Boxplot4 <- renderPlot({      
        dataset<- c(66, 114, 115,
                    44,45,43,66,67,68,69, 88,  44,45,43,66,67,68,69, 88, 
                    3, 4, 5, 4, 6, 34, 45,
                    3, 4, 5, 4, 6, 34, 45, 56, 45, 78, 98)
        boxplot(dataset, ylim = c(0, 120), 
                ylab = 'Y', xlab = 'x',col = "red", border = 'orange', background = 'grey')
      })
      output$text1 <- renderText({paste("Level 10.  \nWelcome to Matching Game.\nThe purpose of this game is helping students understand",
                                        "how would histogram affects the boxplot. \nPlease drag the letters indicating the boxplots into the boxes indicating histograms",
                                        "\nAfter dragging, please CLICK check before going to next level")})
    }
    else {
      output$text1 <- renderText({paste("Congradulations! You have finished all levels!")})
      output$numPoint <- renderText({paste("Congradulations! You have finished all levels!")})
    }
})
  
  observe({
    if (input$hhhhh ==1){
      observeEvent(input$div7,{
        if (input$div7 == "D"){
          output$out1 = renderText(
            paste("Correct!"))
        }
        else{
          output$out1 = renderText(
            paste("False"))
        }
      })
      observeEvent(input$div8,{
        if (input$div8 == "B"){
          output$out2 = renderText(
            paste("Correct!"))
        }
        else{
          output$out2 = renderText(
            paste("False"))
        }
      })
      observeEvent(input$div9,{
        if (input$div9 == "A"){
          output$out3 = renderText(
            paste("Correct!"))
        }
        else{
          output$out3 = renderText(
            paste("False"))
        }
      })   
      observeEvent(input$div6,{
        if (input$div6 == "C"){
          output$out4 = renderText(
            paste("Correct!"))
        }
        else{
          output$out4 = renderText(
            paste("False"))
        }
      })
      output$numPoint = renderText(
        paste("The correct answers of Level 1: D B A C"))
    }
    else if (input$hhhhh == 2){
      observeEvent(input$div7,{
        if (input$div7 == "D"){
          output$out1 = renderText(
            paste("Correct!"))
        }
        else{
          output$out1 = renderText(
            paste("False"))
        }
      })
      observeEvent(input$div8,{
        if (input$div8 == "C"){
          output$out2 = renderText(
            paste("Correct!"))
        }
        else{
          output$out2 = renderText(
            paste("False"))
        }
      })
      observeEvent(input$div9,{
        if (input$div9 == "A"){
          output$out3 = renderText(
            paste("Correct!"))
        }
        else{
          output$out3 = renderText(
            paste("False"))
        }
      })   
      observeEvent(input$div6,{
        if (input$div6 == "B"){
          output$out4 = renderText(
            paste("Correct!"))
        }
        else{
          output$out4 = renderText(
            paste("False"))
        }
      })
      output$numPoint = renderText(
        paste("The correct answers of Level 2: D C A B"))
    }
    else if (input$hhhhh ==3){
      observeEvent(input$div7,{
        if (input$div7 == "A"){
          output$out1 = renderText(
            paste("Correct!"))
        }
        else{
          output$out1 = renderText(
            paste("False"))
        }
      })
      observeEvent(input$div8,{
        if (input$div8 == "B"){
          output$out2 = renderText(
            paste("Correct!"))
        }
        else{
          output$out2 = renderText(
            paste("False"))
        }
      })
      observeEvent(input$div9,{
        if (input$div9 == "C"){
          output$out3 = renderText(
            paste("Correct!"))
        }
        else{
          output$out3 = renderText(
            paste("False"))
        }
      })   
      observeEvent(input$div6,{
        if (input$div6 == "D"){
          output$out4 = renderText(
            paste("Correct!"))
        }
        else{
          output$out4 = renderText(
            paste("False"))
        }
      })
      output$numPoint = renderText(
        paste("The correct answers of Level 3: A B C D"))
    }
    else if (input$hhhhh ==4){
      observeEvent(input$div7,{
        if (input$div7 == "C"){
          output$out1 = renderText(
            paste("Correct!"))
        }
        else{
          output$out1 = renderText(
            paste("False"))
        }
      })
      observeEvent(input$div8,{
        if (input$div8 == "D"){
          output$out2 = renderText(
            paste("Correct!"))
        }
        else{
          output$out2 = renderText(
            paste("False"))
        }
      })
      observeEvent(input$div9,{
        if (input$div9 == "B"){
          output$out3 = renderText(
            paste("Correct!"))
        }
        else{
          output$out3 = renderText(
            paste("False"))
        }
      })   
      observeEvent(input$div6,{
        if (input$div6 == "A"){
          output$out4 = renderText(
            paste("Correct!"))
        }
        else{
          output$out4 = renderText(
            paste("False"))
        }
      })
      output$numPoint = renderText(
        paste("The correct answers of Level 4: C D B A"))
    }
    else if (input$hhhhh == 5){
      observeEvent(input$div7,{
        if (input$div7 == "B"){
          output$out1 = renderText(
            paste("Correct!"))
        }
        else{
          output$out1 = renderText(
            paste("False"))
        }
      })
      observeEvent(input$div8,{
        if (input$div8 == "A"){
          output$out2 = renderText(
            paste("Correct!"))
        }
        else{
          output$out2 = renderText(
            paste("False"))
        }
      })
      observeEvent(input$div9,{
        if (input$div9 == "D"){
          output$out3 = renderText(
            paste("Correct!"))
        }
        else{
          output$out3 = renderText(
            paste("False"))
        }
      })   
      observeEvent(input$div6,{
        if (input$div6 == "C"){
          output$out4 = renderText(
            paste("Correct!"))
        }
        else{
          output$out4 = renderText(
            paste("False"))
        }
      })
      output$numPoint = renderText(
        paste("The correct answers of Level 5: B A D C"))
    }   
    else if (input$hhhhh ==6){
      observeEvent(input$div7,{
        if (input$div7 == "B"){
          output$out1 = renderText(
            paste("Correct!"))
        }
        else{
          output$out1 = renderText(
            paste("False"))
        }
      })
      observeEvent(input$div8,{
        if (input$div8 == "A"){
          output$out2 = renderText(
            paste("Correct!"))
        }
        else{
          output$out2 = renderText(
            paste("False"))
        }
      })
      observeEvent(input$div9,{
        if (input$div9 == "C"){
          output$out3 = renderText(
            paste("Correct!"))
        }
        else{
          output$out3 = renderText(
            paste("False"))
        }
      })   
      observeEvent(input$div6,{
        if (input$div6 == "D"){
          output$out4 = renderText(
            paste("Correct!"))
        }
        else{
          output$out4 = renderText(
            paste("False"))
        }
      })
      output$numPoint = renderText(
        paste("The correct answers of Level 6: B A C D"))
    }
    else if (input$hhhhh ==7){
      observeEvent(input$div7,{
        if (input$div7 == "C"){
          output$out1 = renderText(
            paste("Correct!"))
        }
        else{
          output$out1 = renderText(
            paste("False"))
        }
      })
      observeEvent(input$div8,{
        if (input$div8 == "B"){
          output$out2 = renderText(
            paste("Correct!"))
        }
        else{
          output$out2 = renderText(
            paste("False"))
        }
      })
      observeEvent(input$div9,{
        if (input$div9 == "A"){
          output$out3 = renderText(
            paste("Correct!"))
        }
        else{
          output$out3 = renderText(
            paste("False"))
        }
      })   
      observeEvent(input$div6,{
        if (input$div6 == "D"){
          output$out4 = renderText(
            paste("Correct!"))
        }
        else{
          output$out4 = renderText(
            paste("False"))
        }
      })
      output$numPoint = renderText(
        paste("The correct answers of Level 7: C B A D"))
    }
    else if (input$hhhhh ==8){
      observeEvent(input$div7,{
        if (input$div7 == "B"){
          output$out1 = renderText(
            paste("Correct!"))
        }
        else{
          output$out1 = renderText(
            paste("False"))
        }
      })
      observeEvent(input$div8,{
        if (input$div8 == "A"){
          output$out2 = renderText(
            paste("Correct!"))
        }
        else{
          output$out2 = renderText(
            paste("False"))
        }
      })
      observeEvent(input$div9,{
        if (input$div9 == "C"){
          output$out3 = renderText(
            paste("Correct!"))
        }
        else{
          output$out3 = renderText(
            paste("False"))
        }
      })   
      observeEvent(input$div6,{
        if (input$div6 == "D"){
          output$out4 = renderText(
            paste("Correct!"))
        }
        else{
          output$out4 = renderText(
            paste("False"))
        }
      })
      output$numPoint = renderText(
        paste("The correct answers of Level 8: B A C D"))
    }
    else if (input$hhhhh ==9){
      observeEvent(input$div7,{
        if (input$div7 == "B"){
          output$out1 = renderText(
            paste("Correct!"))
        }
        else{
          output$out1 = renderText(
            paste("False"))
        }
      })
      observeEvent(input$div8,{
        if (input$div8 == "A"){
          output$out2 = renderText(
            paste("Correct!"))
        }
        else{
          output$out2 = renderText(
            paste("False"))
        }
      })
      observeEvent(input$div9,{
        if (input$div9 == "C"){
          output$out3 = renderText(
            paste("Correct!"))
        }
        else{
          output$out3 = renderText(
            paste("False"))
        }
      })   
      observeEvent(input$div6,{
        if (input$div6 == "D"){
          output$out4 = renderText(
            paste("Correct!"))
        }
        else{
          output$out4 = renderText(
            paste("False"))
        }
      })
      output$numPoint = renderText(
        paste("The correct answers of Level 9: B A C D"))
    }
    else if (input$hhhhh ==10){
      observeEvent(input$div7,{
        if (input$div7 == "A"){
          output$out1 = renderText(
            paste("Correct!"))
        }
        else{
          output$out1 = renderText(
            paste("False"))
        }
      })
      observeEvent(input$div8,{
        if (input$div8 == "D"){
          output$out2 = renderText(
            paste("Correct!"))
        }
        else{
          output$out2 = renderText(
            paste("False"))
        }
      })
      observeEvent(input$div9,{
        if (input$div9 == "B"){
          output$out3 = renderText(
            paste("Correct!"))
        }
        else{
          output$out3 = renderText(
            paste("False"))
        }
      })   
      observeEvent(input$div6,{
        if (input$div6 == "C"){
          output$out4 = renderText(
            paste("Correct!"))
        }
        else{
          output$out4 = renderText(
            paste("False"))
        }
      })
      output$numPoint = renderText(
        paste("The correct answers of Level 10: A D B C"))
    }
  })
  observe({
    if (input$clear ==1){
      output$out1 = renderText(
        paste(" "))
      output$out2 = renderText(
        paste(" "))
      output$out3 = renderText(
        paste(" "))
      output$out4 = renderText(
        paste(" "))
      output$numPoint = renderText(
        paste(" ")
      )
    }
    else if (input$clear ==2){
      output$out1 = renderText(
        paste(" "))
      output$out2 = renderText(
        paste(" "))
      output$out3 = renderText(
        paste(" "))
      output$out4 = renderText(
        paste(" "))
      output$numPoint = renderText(
        paste(" ")
      )
    }
    else if (input$clear ==3){
      output$out1 = renderText(
        paste(" "))
      output$out2 = renderText(
        paste(" "))
      output$out3 = renderText(
        paste(" "))
      output$out4 = renderText(
        paste(" "))
      output$numPoint = renderText(
        paste(" ")
      )
    }
    else if (input$clear ==4){
      output$out1 = renderText(
        paste(" "))
      output$out2 = renderText(
        paste(" "))
      output$out3 = renderText(
        paste(" "))
      output$out4 = renderText(
        paste(" "))
      output$numPoint = renderText(
        paste(" ")
      )
    }
    else if (input$clear ==5){
      output$out1 = renderText(
        paste(" "))
      output$out2 = renderText(
        paste(" "))
      output$out3 = renderText(
        paste(" "))
      output$out4 = renderText(
        paste(" "))
      output$numPoint = renderText(
        paste(" ")
      )
    }  
    else if (input$clear ==6){
      output$out1 = renderText(
        paste(" "))
      output$out2 = renderText(
        paste(" "))
      output$out3 = renderText(
        paste(" "))
      output$out4 = renderText(
        paste(" "))
      output$numPoint = renderText(
        paste(" ")
      )
    }
    else if (input$clear ==7){
      output$out1 = renderText(
        paste(" "))
      output$out2 = renderText(
        paste(" "))
      output$out3 = renderText(
        paste(" "))
      output$out4 = renderText(
        paste(" "))
      output$numPoint = renderText(
        paste(" ")
      )
    }   
    else if (input$clear ==8){
      output$out1 = renderText(
        paste(" "))
      output$out2 = renderText(
        paste(" "))
      output$out3 = renderText(
        paste(" "))
      output$out4 = renderText(
        paste(" "))
      output$numPoint = renderText(
        paste(" ")
      )
    }
    else if (input$clear ==9){
      output$out1 = renderText(
        paste(" "))
      output$out2 = renderText(
        paste(" "))
      output$out3 = renderText(
        paste(" "))
      output$out4 = renderText(
        paste(" "))
      output$numPoint = renderText(
        paste(" ")
      )
    }
  })
  observe({
    if(input$clear < input$hhhhh){
      output$out1 = renderText(
        return(NULL))
    }
  })
})
