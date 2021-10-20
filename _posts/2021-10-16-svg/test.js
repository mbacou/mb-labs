// !preview r2d3 data=ken
//
// r2d3: https://rstudio.github.io/r2d3
//

var pal = ['#3C8DBC','#DD4B39','#00A65A','#00C0EF','#F39C12','#0073B7','#001F3F','#39CCCC','#3D9970','#01FF70','#FF851B','#F012BE','#605CA8','#D81B60','#111111','#D2D6DE']

// Keep only positive variables
var dd = data.filter((d) => (d.VALUE !== 0));

let box = 20;

svg
  .selectAll("rect")
  .data(dd)
  .enter()
  .append("rect")
  .attr("x", 5)
  .attr("y", (_, i) => (i * (box+5)+5) )
  .attr("width", (d) => (Math.abs(d.VALUE) * 500/14) )
  .attr("height", box)
  .attr("fill", pal[3])
  .on("mouseover", handleMouseOver)
  .on("mouseout", handleMouseOut);

svg
  .selectAll("text")
  .data(dd)
  .enter()
  .append("text")
  .attr("x", 10)
  .attr("y", (_, i) => (i * (box+5)+20) )
  .style("fill", "black")
  .style("font-size", ".8em")
  .text((d) => (d.SUBCLASS + " - " + d.VARIABLE + ": "
  + d.VALUE.toFixed(2) + " km³/year"));

// Test interactions
function handleMouseOver(d, i) {
  d3.select(this)
  .style("fill", pal[4])
  .move(1, 0)
};

function handleMouseOut(d, i) {
  d3.select(this)
  .style("fill", pal[3])
  .move(-1, 0)
};

d3.selection.prototype.move = function(x, y) {
  this.attr("transform", "translate(" + x + "," + y + ")");
  return this;
};
