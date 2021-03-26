# saveImageHigh

Saving an **R graph** as an image or a pdf **with high resolution**.

## Installation

```r
# install.packages("devtools")
devtools::install_github("nikopech/saveImageHigh")
```

## Usage

```r
gr = ggplot(mtcars, aes(mpg, disp, color = am)) + geom_point()

save_as_pdf({print(gr)},
            file.name = "my-graph.pdf",
            width = 6,
            height = 4)

save_image({plot(1:10, 1:10)},
           file.name = "first-image.png")
```
