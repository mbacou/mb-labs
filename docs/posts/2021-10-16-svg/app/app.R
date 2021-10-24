library(shiny)
library(data.table)
library(r2d3)

data <- fread("data.csv")
setnames(data, tolower(names(data)))
data[, year := as.Date(paste0(year, "-01-01"))]

ui <- fluidPage(

  fluidRow(
    column(6,
      selectInput("txtISO3", "Basin", data[, unique(iso3)]),
      sliderInput("numYear", "Year",
        min=data[, min(year)], max=data[, max(year)],
        value=data[, max(year)], step=365, timeFormat="%Y")
    ),
    column(6,
      textAreaInput("objSelected", "Click a cell to get its value", "none"),
    ),
    column(12,
      d3Output("d3")
    )
  )
)


server <- function(input, output) {

  dt = reactive(
    data[sheet=="sheet1" & iso3==input$txtISO3 &
        year(year)==year(input$numYear)]
  )

  output$d3 = renderD3({
    r2d3(dt(), script="sheet_1.js")
  })

  observeEvent(input$bar_clicked, {
    s = input$bar_clicked
    updateTextAreaInput(inputId="objSelected",
      value=paste(s$id, ": ", s$data))
  })

}

shinyApp(ui = ui, server = server)
