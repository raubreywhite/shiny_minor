
a <- navbarPage("My Application",
               header=tags$head(
                 tags$link(rel = "stylesheet", type = "text/css", href = "styles.css")
               ),
  tabPanel("Component 1",
           div(class="container",
           div(class="column10 prefix1 txt-center",
            plotOutput("plot")   
           )
           )
  ),
  tabPanel("Component 2",
           div(class="container",
               div(class="column10 prefix1 txt-center",
                   verbatimTextOutput("summary")
               )
           )
  ),
  tabPanel("Component 3",
           div(class="container",
               div(class="column10 prefix1 txt-center",
                   DT::dataTableOutput("table")
               )
           )
  )
)
a
b <- a
b[[3]][[1]] <- div(class="navpadding")
b[[3]][[2]] <- div(class="txt-center",a[[3]][[1]])
for(i in 2:length(a[[3]])) b[[3]][[i+2]] <- a[[3]][[i]]
b