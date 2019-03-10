#' Calculate the frequency table of all \code{data}'s variables. 
#' 
#' @param data A dataframe.
#' @return A list containing the frequency table from all \code{data}'s variables.
#' @examples
#' data(mtcars)
#' frequency_tables(mtcars)
frequency_tables <- function(data){
  list_freq <- apply(data, 2, function(x){
    prop.table(table(x))
  })
  
  return(list_freq)
}

