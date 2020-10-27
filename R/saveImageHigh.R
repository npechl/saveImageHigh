#' @title Save a graph as PDF of PNG with high resolution.
#'
#' @description This package saves an R graph in PDF or PNG format with high resolution.
#' 
#' @author Pechlivanis Nikolaos
#'
#' @param graph expression generating a graph
#'
#' @param file.name output file name to write
#'
#' @param width output file width
#'
#' @param height output file height
#'
#' @param pdf.file PDF file to read
#'
#' @param pages PDF pages to read
#'
#' @export save_image_from_pdf
#'
#' @export save_as_pdf
#'
#' @export save_image
#'

save_image_from_pdf = function(pdf.file, file.name = "image.png", pages = NULL){

  temp = magick::image_read_pdf(path = pdf.file, pages = pages)
  magick::image_write(temp, path = file.name)

}

save_as_pdf <- function(graph, file.name = "pdf-graph.pdf", width = 7, height = 7){

  pdf(file = file.name, width = width, height = height)
  graph
  dev.off()

}

save_image <- function(graph, file.name = "graph.png", width = 7, height = 7, res = 500){

  format = base::strsplit(file.name, split = "\\.")[[1]][2]

  if(format == "png"){

    png(filename = file.name, width = width, height = height, units = "in", res = res)
    graph
    dev.off()

  } else if (format == "jpeg") {

    jpeg(filename = file.name, width = width, height = height, units = "in", res = res)
    graph
    dev.off()

  } else if (format == "tiff") {

    tiff(filename = file.name, width = width, height = height, units = "in", res = res)
    graph
    dev.off()

  } else {

    bmp(filename = file.name, width = width, height = height, units = "in", res = res)
    graph
    dev.off()

  }
}

# save_as_png = function(graph, file.name = "image.png", width = 7, height = 7){

#   pdf(file = "temp.pdf", width = width, height = height)
#   graph
#   dev.off()

#   temp = magick::image_read_pdf(path = "temp.pdf")
#   magick::image_write(temp, path = file.name)
#   file.remove("temp.pdf")
# }


