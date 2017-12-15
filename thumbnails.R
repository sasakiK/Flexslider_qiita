

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
            
                    animation: "slide",
                    controlNav: "thumbnails",

                     
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
                            　tags$li(`data-thumb` = "images/image1.png", tags$img(src = "images/image1.png")  ),
                              tags$li(`data-thumb` = "images/image2.png", tags$img(src = "images/image2.png")  ),
                              tags$li(`data-thumb` = "images/image3.png", tags$img(src = "images/image3.png")  ),
                              tags$li(`data-thumb` = "images/image4.png", tags$img(src = "images/image4.png")  )
                            )
                    )
              )
            ),
            
            includeCSS("www/css/style.css")
          )
)

server <- function(input, output, session){}

shinyApp(ui = ui, server = server)
