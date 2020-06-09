#' @title Save a graph as PDF of PNG with high resolution.
#'
#' @description This package saves an R graph in PDF or PNG format with high resolution.
#'
#' @param graph
#'
#' @param file.name
#'
#' @param width
#'
#' @param height
#'
#' @export save_as_pdf
#'
#' @export save_as_png

save_as_pdf = function(graph, file.name = "pdf-graph.pdf", width = 7, height = 7){

  pdf(file = file.name, width = width, height = height)
  graph
  dev.off()

}

save_as_png = function(graph, file.name = "image.png", width = 7, height = 7){

  pdf(file = "temp.pdf", width = width, height = height)
  graph
  dev.off()

  temp = image_read_pdf(path = "temp.pdf")
  image_write(temp, path = file.name)
  file.remove("temp.pdf")
}
