// !preview r2d3 data=c(0.3, 0.6, 0.8, 0.95, 0.40, 0.20)
//
// r2d3: https://rstudio.github.io/r2d3
//

var pal = ['#3C8DBC','#DD4B39','#00A65A','#00C0EF','#F39C12','#0073B7','#001F3F','#39CCCC','#3D9970','#01FF70','#FF851B','#F012BE','#605CA8','#D81B60','#111111','#D2D6DE'];

const hw = 400;
const box = 20;
const max_value = d3.max(data);

svg
  .selectAll("rect")
  .data(data)
  .enter()
  .append("rect")
  .attr("x", (d, i) => Math.min(40, 40+((hw-40)*d/max_value)) )
  .attr("y", (_, i) => (i * (box+5)+5) )
  .attr("width", (d, i) => (hw-40)*Math.abs(d)/max_value )
  .attr("height", box)
  .attr("fill", pal[3]);
