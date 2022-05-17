#'  Simple population growth with carrying capacity
#' @param time time
#' @param P initial population
#' @param r intrinsic growth rate 
#' @return derivative of population with time 
#' @examples use with ode solver
#' ode(y=1,time=c(1;100),dexppop, parms=c(0.012))

dexppopK = function (time, P, parms) {
  dexpop = parms$r * P * (1 - P/parms$K)
  return(list(dexpop))
}