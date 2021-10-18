// !preview r2d3 data=NULL, container="div"
//
// r2d3: https://rstudio.github.io/r2d3
//

div
  .append("div")
  .attr("id", "sheet_1");

div.select("#sheet_1")
  .style("width", "100%")
  .style("height", "300px")
  .style("background-color", "blue");



d3.xml("svg/sheet_1.svg",
  function(error, svgDoc) {
    if (error) {console.log(error); return;}
    var svgNode = svgDoc.getElementsByTagName("svg")[0];
    d3.select("#sheet_1").node().appendChild(svgNode);
});

// List data-driven elements
svg.selectAll("text")
  .filter(function(d) {
  return d.text == "NaN";
  })
  .text("2");

// Remove logo
svg.selectAll("text").remove();

