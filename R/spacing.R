spacing <- function(text){

  spacing_ <- function(text){
    if (!requireNamespace("httr")) install.packages("httr")

    res <- httr::PUT(url = "http://35.201.156.140:8080/spacing",
                     body = list(sent = as.character(text)))

    out <- httr::content(res)$sent
  }

  ress <- sapply(text, spacing_, simplify = F, USE.NAMES = F)

  if(length(ress) == 1) ress <- ress[[1]]

  return(ress)
}
