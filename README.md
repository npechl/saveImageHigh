# saveImageHigh

Saving an R graph with high resolution.

Install from Github:

```
devtools::install_github("nikopech/saveImageHigh")
```


## Usage

```
gr = ggplot(mtcars, aes(mpg, disp, color = am)) + geom_point()

save_as_pdf({print(gr)},
            file.name = "my-graph.pdf",
            width = 6,
            height = 4)

save_image({plot(1:10, 1:10)},
           file.name = "first-image.png")
```