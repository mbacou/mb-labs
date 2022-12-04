// !preview r2d3 data=c(.2,.3), container="div"
//

d3.xml("svg/sheet_1.svg")
  .then(d => {
    div.node().append(d.documentElement);
  });

var svg = div.select("svg");

svg.selectAll('text')
    .on("mouseover", function(){ d3.select(this) .attr('fill', 'orange'); })
    .on("mouseout", function() { d3.select(this) .attr('fill', 'steelblue') });
