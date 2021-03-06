#'Draw a three layers pie chart
#'@par
#'all          : percentages of four type of FES in the total population
#'aboveMedian : percentages of four type of FES in the above Median population
#'belowMedian : percentages of four type of FES in the above Median population

library('plotrix')
pieChart = function(aboveMedian, total, belowMedian){
  iniR = 0.07
  colors = c( '#9ecae1','#e5f5e0','#a1d99b', 'white')
#   stats = cbind(belowMedian, total, aboveMedian)
#   colnames(stats) = c("below", "total", "above")
#   rownames(stats) = c("1", "2", "3", "4")
  pie(1, radius=iniR, init.angle=90, col=c('white'), border = NA, labels='')
  floating.pie(-0.5,0,aboveMedian,radius=7*iniR, startpos=pi/2, col=colors,border="#44aaff")
  floating.pie(-0.5,0,total,radius=5*iniR, startpos=pi/2, col=colors,border="#44aaff")
  floating.pie(-0.5,0,belowMedian,radius=3*iniR, startpos=pi/2, col=colors,border="#44aaff")
  legend(0.2, 8*iniR, c("Type1,Both in Labor Force ", "Type2,Husband in Labor Force", "Type3,Wife in Labor Force", "Type4,Neither in Labor Force"), col=colors,pch=19, bty='n', ncol=1)
  # addtable2plot(-4.5, -2.5, stats, bty="n", hlines=FALSE, vlines=FALSE, title="The stats", display.colnames = TRUE, display.rownames = TRUE)
  text(-0.5,-8*iniR, "Married-couple Households in the US")
  text(-0.6, 0, "belowMedian")
  text(-0.6, 4*iniR, "total")
  text(-0.6, 6*iniR, "aboveMedian")
}