library(shiny)

ui <- fluidPage(
    titlePanel("Travel Shiny App"),
    checkboxGroupInput("Check Graph", label = h3("Check Graph That You Want To See"), 
                       choices = list("2018~2019" = 1, "2019~2020" = 2, "2020~2021" = 3, "Seat" = 4, "Airplane" = 5, "Passenger" = 6, "Shipment"= 7),
                       selected = 1),
    mainPanel(
        img(src="travel1819", height=200, width =250)
    ),
    fluidRow(column(3, verbatimTextOutput("text_choice")))
)
    

server <- function(input, output){
    output$text_choice <- renderPrint({
        return(paste0("You have chosen the choice ",input$checkGroup1))})
} 

    
shinyApp(ui = ui, server = server)