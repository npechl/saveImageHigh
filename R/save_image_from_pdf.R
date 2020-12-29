#' Convert PDF page to an image
#'
#' @param pdf.file PDF file to read
#' @param file.name output file name to write
#' @param pages PDF pages to read
#'
#' @export
#'
#' @examples
#'

save_image_from_pdf = function(pdf.file,
                               file.name = "image.png",
                               pages = NULL){

  temp = magick::image_read_pdf(path = pdf.file, pages = pages)
  magick::image_write(temp, path = file.name)

}
