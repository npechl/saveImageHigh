#' Save an R graph as a PDF file
#'
#' @param graph R expression generating a graph
#' @param file.name output file name to write
#' @param width output file width
#' @param height output file height
#'
#' @export
#'
#' @examples
save_as_pdf <- function(graph,
                        file.name = "pdf-graph.pdf",
                        width = 7,
                        height = 7){

  grDevices::pdf(file = file.name, width = width, height = height)
  graph
  grDevices::dev.off()

}
