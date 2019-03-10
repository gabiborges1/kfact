# Hello, world!
#
# This is the script containing the functions to
# initialize the centroids 
#
# Author: Gabriela Borges
# Data Inicial: 10-03-2019
# Data da Última Modificação: 10-03-2019

#' Initializes the clusters using the traditional approach. 
#' 
#' @param data A dataframe.
#' @param k A integer number.
#' @return A dataframe containing \code{k} rows randomly selected from \code{data}.
#' @examples
#' data(mtcars)
#' k <- 3
#' initial_traditional(mtcars, k)
initial_traditional <- function(data, k){
  centroids <- dplyr::sample_n(data, k)
  return(centroids)
}

#' Selects, using weighted sampling, a category from the table.
#' 
#' @param table A prop.table.
#' @return A vector of unit size containing the selected randomly weighted category.
#' @examples
#' data(mtcars)
#' table <- prop.table(table(mtcars$carb))
#' sample_weighted_category(table)
sample_weighted_category <- function(table){
  categories <- names(table)
  new_value <- sample(size = 1, x = categories, prob = table)
  
  return(new_value)
}