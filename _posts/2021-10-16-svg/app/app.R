library(shiny)
library(data.table)
library(r2d3)

data <- fread("data.csv")
setnames(data, tolower(names(data)))

ui <- fluidPage(

  inputPanel(
    selectInput("txtISO3", "Basin", data[, unique(iso3)]),
    br(),
    sliderInput("numYear", "Year",
      min=data[, min(year)], max=data[, max(year)],
      value=data[, max(year)], step=1, round=T)
  ),

  d3Output("d3")
)


server <- function(input, output) {

  dt = reactive(
    data[sheet=="sheet1" & iso3==input$txtISO3 & year==input$numYear]
    )

  output$d3 = renderD3({
    r2d3(dt(), script="sheet_1.js")
  })
}

shinyApp(ui = ui, server = server)
