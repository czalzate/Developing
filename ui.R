library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Calculating you BMI"),
  sidebarPanel(
    numericInput(inputId="mass", label = "Insert your mass (kilograms)",0, min=0,max=200,step=1),
    numericInput(inputId="height", label = "Insert your height (meters) Example : 1.67 -1 meter and 67 centimeters-",0,min=0,max=10,step=0.01),
    h3("Score"),
    helpText("Low weight (BMI < 18,5)", 
             "Normal weight (BMI = 18,5-24,99)",
             "Overweight (BMI = 25-29,99)",
             "Obesity (BMI >= 30)"
             )
),
  mainPanel(
    h3('Results'),
    p('Your mass is:'),
    textOutput('mass'),
    p('Your height is:'), 
    textOutput('height'),
    h4('Your BMI is:'),
    textOutput("bmiresult")
    ) 
  ))