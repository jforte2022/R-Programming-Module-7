library(ggplot2)
diamond <- diamonds
plot(diamond$carat, diamond$price, col = diamond$cut)
s <- list(name="John", age=21, GPA=3.5)
class(s) <- "student"
s

setClass("student2", representation(name = "character", age = "numeric", GPA = "numeric"))
me <- new("student2", name = "Jonathan", age = 23, GPA = 3.7)
me

setMethod("show", "student2", function(object){
  cat(object@name, "\n", object@age, "\n", object@GPA)
})