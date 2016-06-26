library(shiny)
bmi<-function(mass, height){
  result<-round(mass/height^2,digits=2)
  return(result)
}

shinyServer( 
  function(input, output) {
  output$mass <- renderText({input$mass})
  output$height <- renderText({input$height}) 
  output$bmiresult <- renderText({bmi(input$mass,input$height)})
} )