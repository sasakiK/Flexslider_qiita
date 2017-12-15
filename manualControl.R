
# 自作コントローラー (dashboard)

library(shiny)
library(shinydashboard)

ui <- tagList(
  dashboardPage(
    dashboardHeader(),
    dashboardSidebar(),
    dashboardBody(
      
      tags$head(
        HTML('
             <head>
             <link rel="stylesheet" type="text/css" href="css/flexslider.css">
             <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
             <script type="text/javascript" src="js/jquery.flexslider-min.js"></script>
             
             <script type="text/javascript" charset="utf-8">
             $(window).load(function() {
             $(".flexslider").flexslider({
             
             manualControls: "#hoge a",
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
            fluidRow(
              shiny::column(width = 12,
                            tags$ul( class = "slides",
                                    tags$li( tags$h1(" this is slide1 ")  ),
                                    tags$li( tags$h1(" this is slide2 ")  ),
                                    tags$li( tags$h1(" this is slide3 ")  )
                              )
                            )
                    ),
            fluidRow(
              shiny::column(width = 12,
                            div(id = "hoge",
                                tags$a( herf="#", "1"), tags$span("　"),
                                tags$a( herf="#", "2"), tags$span("　"),
                                tags$a( herf="#", "3")
                                )
                            )
              )
          )
        )
      ),
      
      includeCSS("www/css/style.css")
        )
      )
  )


server <- function(input, output, session){}

shinyApp(ui = ui, server = server)


