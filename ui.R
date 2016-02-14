shinyUI(pageWithSidebar(  
    headerPanel("Health and Economic Effects of Severe Weather Events
                Across the United States"),  
    sidebarPanel(    
        h3("Choose one factor to analyze. This app will attempt to detect which of the
       different severe weather events included in the NOAA Storm Database are 
       most harmful with respect to the chosen factor."),
        selectInput('factor', 'factor', c("total_fatalities","total_injuries",
                                          "total_propdmg",
                                          "total_cropdmg","NONE")
                    ,selected = "NONE")),
            mainPanel(    
        tableOutput('table')  
    )
))