## Libraries
library(shiny)
# Install library with stock information if not already installed
if(!require(quantmod)){
  install.packages("quantmod")
  library(quantmod)
}

## Define server logic required to load financial data from a stock ticker, plot price evolution and summarize return
shinyServer(function(input, output) {

  # Plot chart for the defined time period  
    output$stock_price <- renderPlot({
    # Stock information 
    data <- getYahooData(input$stock, gsub("-","",as.Date(input$date_range[1])),gsub("-","",as.Date(input$date_range[2])))
    data <- data[data$Volume!=0,c("Open","High","Low","Close","Volume")]
    # Chart
    chartSeries(data,theme=chartTheme('white'),TA=NULL,name=input$stock,layout=NULL)
    })
    
  # Calculate return
    data_ret <- reactive({
      data <- getYahooData(input$stock, gsub("-","",as.Date(input$date_range[1])),gsub("-","",as.Date(input$date_range[2])))
      data <- data[data$Volume!=0,c("Open","High","Low","Close","Volume")]
      ret <- paste(round(100*(as.numeric(log(data[nrow(data),"Close"])) - as.numeric(log(data[1,"Close"]))),2),"%",sep="")
      return(ret)
    }) 
  
  # Total return  
    output$text <- renderText({data_ret()     
    })
})
 