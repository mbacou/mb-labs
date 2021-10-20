// !preview r2d3 data=c(0.3, 0.6, 0.8, 0.95, 0.40, 0.20)
//
// r2d3: https://rstudio.github.io/r2d3
//

var pal = ['#3C8DBC','#DD4B39','#00A65A','#00C0EF','#F39C12','#0073B7','#001F3F','#39CCCC','#3D9970','#01FF70','#FF851B','#F012BE','#605CA8','#D81B60','#111111','#D2D6DE'];

svg
  .insert("g")
    .attr("class","anno")
  .insert("rect")
   .attr("stroke", "red")
   .attr("width", 10)
   .attr("heigh", 10);

