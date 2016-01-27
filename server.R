# This is the actual compond interest calculation:
# future value = initial reposit x ( 1 + interest rate) ^ year
# resultes are round to the cents

library(shiny)

shinyServer(

function(input,output)
    {

    output$oid1<-renderText({round( as.numeric(input$initialDeposit)*
		(1 + as.numeric(input$interestRate)/100)^as.numeric(input$year), digit = 2)})

    output$oid2<-renderText({round( as.numeric(input$initialDeposit)*
		(1 + as.numeric(input$interestRate)/100)^as.numeric(input$year) - 
		as.numeric(input$initialDeposit), digit = 2) })


  })