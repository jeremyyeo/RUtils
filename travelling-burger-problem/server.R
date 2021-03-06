library(shiny)
library(shinydashboard)
library(jsonlite)
library(RCurl)

shinyServer(function(input, output, session) {
  
  set.seed(122)
  histdata <- rnorm(500)
  
  output$plot1 <- renderPlot({
    data <- histdata[seq_len(input$slider)]
    hist(data)
  })
  
  output$testtable <- DT::renderDataTable({
    DT::datatable(details, rownames = F, filter = 'top', escape = F)
  })
  
})
