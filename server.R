library(arules)
library(shiny)
#groceries<-read.transactions("groceries.csv", sep=",")
data("Groceries")
shinyServer(
        function(input, output) {
                output$myGraph <- renderPlot({
                        par(bg="grey")
                        tn <- input$topn
                        itemFrequencyPlot(Groceries,topN=tn)
                       
                                        
                })
                
        }
)