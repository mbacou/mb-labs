#' Apply graphic color palettes
#'
#' Sets new default values to `thematic::thematic_on`, which modify `lattice`
#' and `ggplot` color palettes and fonts.
#'
#' @inheritParams thematic::thematic_on
#' @inheritDotParams thematic::thematic_on
#' @return A global graphic theme
#' @importFrom thematic thematic_on font_spec sequential_gradient
#' @examples
#' theme_labs_on()
#' lattice::show.settings()
#'
#' @export
theme_labs_on <- function(
  bg = "transparent",
  fg = "#111719",
  accent = "#789494",
  font = "Roboto Condensed",
  sequential = sequential_gradient(fg_weight=.5, bg_weight=.5, fg_low=FALSE),
  qualitative = c(
    "#789494", "#445e64", "#222e32",
    "#aea39a", "#98796f", "#9b59b6", "#3daee9",
    "#27ae60", "#edcd37", "#f67400", "#da4453"),
  ...) thematic_on(
    bg, fg, accent, font_spec(font), sequential, qualitative, ...)


#' Themed `ggplot`
#'
#' A custom `ggplot` theme for posts on this website.
#'
#' @inheritParams ggplot2::ggplot
#' @param pos_x Position of x-axis (bottom or top)
#' @param pos_y Position of y-axis (right or left)
#' @param base_size Base font size in points
#' @param base_family Base font family
#' @param base_bg Plot, panel, legend background
#' @param base_color Color for text and line elements
#' @inheritDotParams ggplot2::theme
#'
#' @return A `ggplot2` object with new theme elements applied
#' @importFrom ggthemes theme_foundation
#' @import ggplot2
#' @examples
#' require(ggplot2)
#'
#' gglabs(mtcars, aes(wt, mpg, color=carb)) +
#'   geom_point() + geom_smooth() +
#'   labs(title="My Title", subtitle="My Subtitle", caption="My plot caption")
#'
#' gglabs(mtcars, aes(wt, mpg, color=factor(cyl))) +
#'   geom_point() +
#'   labs(title="My Title", subtitle="My Subtitle", caption="My plot caption")
#'
#' @export
gglabs <- function(
  data = NULL,
  mapping = aes(),
  pos_x = c("bottom", 'top'),
  pos_y = c("right", "left"),
  base_size = 12,
  base_family = "Roboto Condensed",
  base_bg = NA,
  base_color = "#111719",
  ...) {

  pos_x = match.arg(pos_x)
  pos_y = match.arg(pos_y)

  ggplot(data, mapping

  ) + guides(
    x = if(pos_x=="top") guide_none() else guide_axis(),
    x.sec = if(pos_x=="bottom") guide_none() else guide_axis(),
    y = if(pos_y=="right") guide_none() else guide_axis(),
    y.sec = if(pos_y=="left") guide_none() else guide_axis()

  ) + theme_foundation(
    base_size = base_size, base_family = base_family
  ) + theme(

    plot.margin = unit(c(1, 1, 1, 1), "lines"),
    text = element_text(color=base_color, lineheight=.9),
    line = element_line(linetype=1, color=base_color),
    rect = element_rect(fill=NA, linetype=0, color=NA),
    plot.background = element_rect(fill=base_bg, color=NA),
    panel.background = element_rect(fill=base_bg, color=NA),
    panel.grid = element_line(color=NULL, linetype=3),
    panel.grid.major = element_line(color=base_color),
    panel.grid.major.x = element_blank(),
    panel.grid.minor = element_blank(),
    strip.background = element_rect(),

    plot.title = element_text(
      face="plain", hjust=0, size=base_size*1.25),
    plot.subtitle = element_text(margin=margin(0,0,1,0, "lines"),
      face="plain", size=base_size, hjust=0),
    strip.text = element_text(
      face="bold", hjust=0, size=base_size),
    plot.caption = element_text(margin=margin(-0.5,4,0,0, "lines"),
      size=base_size*0.9, hjust=0),

    axis.text = element_text(size=base_size, face="bold"),
    axis.text.y = element_text(color=NULL),
    axis.title.x = element_text(color=base_color, size=base_size, face="bold", hjust=1),
    axis.title.y = element_blank(),
    axis.ticks = element_line(color=NULL),
    axis.ticks.length = unit(0.25, "lines"),
    axis.ticks.y = element_blank(),
    axis.ticks.x = element_line(color=NULL),
    axis.line = element_line(),
    axis.line.y = element_blank(),

    legend.background = element_rect(fill=NA, color=NA),
    legend.box.background = element_rect(fill=NA, color=NA),
    legend.title = element_text(size=base_size*0.9, hjust=0),
    legend.margin = margin(0,0,0,1, "lines"),
    legend.key.size = unit(.8, "lines"),
    legend.text = element_text(base_size*0.85),
    legend.position="right", legend.justification="left",
    legend.direction="vertical",
    ...
  )
}


#' Format percentages
#'
#' Fix scales::percent() for NA values
#'
#' @param x A numeric vector to format
#' @inheritDotParams scales::number_format
#' @return formatted character vector
#' @importFrom scales percent
#' @importFrom data.table fifelse
#' @export
pct <- function(x, ...) fifelse(is.na(x) | !is.numeric(x), "--", percent(x, ...))

#' Format currencies
#'
#' Fix scales::comma() for NA values
#'
#' @param x A numeric vector to format
#' @inheritDotParams scales::number_format
#' @return formatted character vector
#' @importFrom scales comma
#' @importFrom data.table fifelse
#' @export
curr <- function(x, ...) fifelse(is.na(x) | !is.numeric(x), "--", comma(x, ...))

#' Format yday dates
#'
#' @param x A numeric vector to format
#' @inheritParams base::format.Date
#' @return formatted character vector
#' @export
yday_to_date <- function(x, format="%m-%d") format(as.Date(as.character(x), format="%j"), format)

