#'
#'Read in Dataset 
#'@par:
#'colsToKeep : vector of strings / parameters to be kept
#'reRead     : Boolean / TRUE if reread in raw data needed
#'pathA      : string / path of "ss13pusa.csv"
#'pathB      : string / path of "ss13pusb.csv"
#'

readIn = function(reRead, colsToKeep, pathA, pathB){
  if(reRead == TRUE){
    popDataA = fread(pathA, select = colsToKeep)
    popDataB = fread(pathB, select = colsToKeep)
    popData = rbind(popDataA, popDataB)
    rm(popDataA, popDataB)
    save(popData, file = "popData.RData")
  }else{
    load("popData.RData")
  }
  return(popData)
}