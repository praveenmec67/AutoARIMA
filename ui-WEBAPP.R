#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#
install.packages('rsconnect')
library(shiny)
library(shinydashboard)
library(plotly)
library(shiny)
library(forecast)
title=tags$a(tags$img(src="logo.png",height=50,width=60),"CPGRAMS Dashboard")
df = read.csv("DataSet-MonthwiseReceiptsDisposal.csv")
# Define UI for application that draws a histogram
shinyUI(
  dashboardPage(skin = "black",
  dashboardHeader(title = title),
  dashboardSidebar(sidebarMenu(menuItem("Forecasting", tabName = "Forecasting"),
                               fileInput(inputId ="file",label="choose your file"),
                               selectInput(inputId="category",label="category", choices=c("Month","Department")
                                           ),
                               submitButton("Update View", icon("refresh")
                              ),actionButton("goButton", "Go!")
                               )
    
  ),
  dashboardBody(tabItem(tabName = "Forecasting",selectInput(inputId = "model", label = "Choose Your Deparment/Month",choices =namess),
                        numericInput(inputId="number", label ="months", value=4, min = 1, max = 100, step = 1
                                    )),dataTableOutput("out1"))
  
)
)