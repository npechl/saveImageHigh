#' Save an R graph as a high resolution image
#'
#' @param graph expression generating a graph
#' @param file.name output file name to write
#' @param width output file width
#' @param height output file height
#' @param res the nominal resolution in in which will be recorded in the bitmap file
#'
#' @export
#'
#' @examples
save_image <- function(graph,
                       file.name = "graph.png",
                       width = 7,
                       height = 7,
                       res = 500){

  format = base::strsplit(file.name, split = "\\.")[[1]][2]

  if(format == "png"){

    grDevices::png(filename = file.name, width = width, height = height, units = "in", res = res)
    graph
    grDevices::dev.off()

  } else if (format == "jpeg") {

    grDevices::jpeg(filename = file.name, width = width, height = height, units = "in", res = res)
    graph
    grDevices::dev.off()

  } else if (format == "tiff") {

    grDevices::tiff(filename = file.name, width = width, height = height, units = "in", res = res)
    graph
    grDevices::dev.off()

  } else {

    grDevices::bmp(filename = file.name, width = width, height = height, units = "in", res = res)
    graph
    grDevices::dev.off()

  }
}
