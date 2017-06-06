library(shiny) # For writePNG fun
library(shinyDND)
shinyServer(function(input, output,session) {
  observe({
    if (input$clear > 0){
      output$numPoint <- renderText({paste("A","D","B","C")})
    }
  })
})
