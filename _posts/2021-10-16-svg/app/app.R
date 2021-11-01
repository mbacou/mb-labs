library(shiny)
library(scales)
library(data.table)
library(r2d3)
library(highcharter)

data <- fread("data.csv")
schema <- fread("sheet_1_schema.csv")
setnames(data, tolower(names(data)))
setnames(schema, tolower(names(schema)))
data[, year := as.Date(paste0(year, "-01-01"))]
data[schema, on=.(class, subclass, variable), id := i.id]

plot_ts <- function(dt, color) {

  unit = " km³"

  highchart() %>%
    hc_chart(zoomType="x") %>%
    hc_add_series(dt, type="area",
      hcaes(x=year(year), y=value), name=dt[1, variable],
      color=color, fillColor=alpha(color, .2), marker=list(enabled=TRUE)) %>%

    hc_tooltip(valueSuffix=unit,
      pointFormat="{series.name}: <strong>{point.y:,.2f}</strong><br/>") %>%
    hc_legend(enabled=TRUE, align="right")
}


ui <- fluidPage(
  fluidRow(
    column(3,
      selectInput("txtISO3", "Basin", data[, unique(iso3)]),
      sliderInput("numYear", "Year",
        min=data[, min(year)], max=data[, max(year)],
        value=data[, max(year)], step=365, timeFormat="%Y"),
      textAreaInput("objSelected", "Click a cell to get its value", "none")
    ),
    column(9,
      tabsetPanel(
        tabPanel("Sheet #1",
          d3Output("d3"),
          highchartOutput("plot_ts", height="200px")
        )
      )
    )
  )
)


server <- function(input, output) {

  s = reactiveVal()

  dt = reactive(
    data[sheet=="sheet1" & iso3==input$txtISO3]
  )

  output$d3 = renderD3({
    r2d3(dt()[year(year)==year(input$numYear)], script="sheet_1.js")
  })

  observeEvent(input$bar_clicked, {
    s = input$bar_clicked
    updateTextAreaInput(inputId="objSelected",
      value=paste(s$var, ": ", comma(as.numeric(s$value), accuracy=0.01)))
    s(s)
  })

  output$plot_ts = renderHighchart({
    req(s()$var)
    s = s()
    plot_ts(dt()[id==s$var], s$color)
  })

}

shinyApp(ui = ui, server = server)
