
# 基本形

library(shiny)

ui <- tagList(
  
  fluidPage(title="Flexslider",
            
            tags$h1("Flexslider"),
            
            tags$head(
              HTML('
                   <head>
                   <link rel="stylesheet" type="text/css" href="css/flexslider.css">
                   <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
                   <script type="text/javascript" src="js/jquery.flexslider-min.js"></script>
                   
                   <script type="text/javascript" charset="utf-8">
                   $(window).load(function() {
                   $(".flexslider").flexslider({
                   
                    animation: "slide"
                   
                   });
                   });
                   </script>
                   
                   
                   </head>
                   ')
              ),
            
            fluidPage(
              shiny::column(width = 12,
                            div(class = "flexslider",
                                tags$ul( class = "slides",
                                         tags$li(tags$h1(" this is slide1 ")  ),
                                         tags$li(tags$h1(" this is slide2 ")  ),
                                         tags$li(tags$h1(" this is slide3 ")  )
                                )
                            )
              )
              
            ),
            
            includeCSS("www/css/style.css")
              )
            )

server <- function(input, output, session){}

shinyApp(ui = ui, server = server)