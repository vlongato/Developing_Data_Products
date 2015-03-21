library(shiny)

# Define UI for dataset viewer application
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Analysis of Portfolio Performance"),
  
  # Sidebar with controls to select a stock ticker and time period
    sidebarPanel(
    h4("Portfolio components"),
    selectInput("stock","Choose a Stock Ticker:", 
    # Stock tickers that form the portfolio
                choices = c("MA", "DIS", "MSFT","RAI","UA","INTC","COP","DOW","NOC")),
    # Data range
    dateRangeInput("date_range", "Date range:",start="2014-01-01",end=(Sys.Date()-1),min="2010-01-01",max=(Sys.Date()-1),language="en"),
    # Source
    h4("Source"),
    img(src="http://talkingbiznews.com/wp-content/uploads/2014/11/Yahoo-Finance-Logo.jpg", height = 50, width = 100)
  ),
  
  # Main panel with performance chart and total return
  mainPanel(
    # Total return
    h4("Total Return"),
    textOutput("text"),
    # Show performance chart
    h4("Stock price"),
    plotOutput("stock_price")
    )
))

