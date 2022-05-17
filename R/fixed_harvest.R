
#'  Logistic population growth derivative with harvesting
#' @param time time since start
#' @param P carbon
#' @param parms - as list with three values, r, K, harv
#' @param r intrinsic growth rate 
#' @param K carrying capacity
#' @param h harvest rate
#' @return derivative of population with time 

fixed_harvest = function(Time, carbon, parms) {
  
  dCarbon = parms$r * carbon * (1- carbon/parms$K) - parms$harv
  return(list(dCarbon))
}