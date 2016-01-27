# This is a calculator for a savings account with annual compond interest
# It assumes an initial deposit, with no additional deposit
# The interests are paid on an annual basis

library(shiny)

shinyUI(pageWithSidebar(

# Title of the calculator
headerPanel("Calculate Savings Amount with Annual Comppond Interest"),

# input data
sidebarPanel(
    
    # initial deposit
    textInput(inputId='initialDeposit','Enter Initial Deposit', value='0'),

    # interest rate in the format of x%, ie, enter the percentage interest value
    textInput(inputId='interestRate','Enter Annual Interset Rate (in %)', value='0'),

    # the accumulating year 
    textInput(inputId='year','Enter Number of Years', value='0')
    
    
  ),


mainPanel(
	    h2('Calculating compond interest savings account'),
            h4('Total future value'),
            verbatimTextOutput("oid1"),
            h4('Total interest earned '),
            verbatimTextOutput("oid2")
              
  )))