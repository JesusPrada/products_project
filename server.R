total_fatalities<-read.csv("./Data/total_fatalities.csv");
total_injuries<-read.csv("./Data/total_injuries.csv");
total_propdmg<-read.csv("./Data/total_propdmg.csv");
total_cropdmg<-read.csv("./Data/total_cropdmg.csv");

shinyServer(  
    function(input, output) {
        res<-reactive({
        if (input$factor == "total_fatalities"){
            head(total_fatalities,10);
        }
        else if (input$factor == "total_injuries"){
            head(total_injuries,10);
        }
        else if (input$factor == "total_propdmg"){
            head(total_propdmg,10);
        }
        else if (input$factor == "total_cropdmg"){
            head(total_cropdmg,10);
        }
        else {
            NULL
        }});
        output$table <- renderTable({
           res()
            })
    }
            
                
)