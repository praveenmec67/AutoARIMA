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
  ntext <- eventReactive(input$goButton, {
    input$number
  })
   
  output$out1<- renderDataTable({
    
    # generate bins based on input$bins from ui.R
    #inFile <- input$file
    #if (is.null(inFile)) return(NULL)
    #na.omit(inFile)
    #df=read.csv(inFile$datapath)
    value = input$model
    df_month1 = subset(df, org_name == value)
    model1 = auto.arima(df_month1$Recetpts)
    summary(model1)
    data.frame(forecast(model1,ntext()))
    
    
  })
  
})
