library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Grocery Store Transaction Data: Market Baskets"),
        sidebarPanel(
                sliderInput(inputId='topn', 'TopN Most Frequent Transactions',value = 5, min = 1, max = 30 , step = 1)
        ),
        mainPanel(
                h3("Most Frequent Transactions"),
                HTML("<p>Proportion of transactions that contain the item"),
                plotOutput('myGraph')
        )
))