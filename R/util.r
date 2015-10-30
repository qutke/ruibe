#' Utils
#' @param elements list
compose_query <- function(elements) {
  if (length(elements) == 0)
    return("")
  
  if (!all(has_name(elements)))
    stop("All components of query must be named", call. = FALSE)
  
  stopifnot(is.list(elements))
  elements <- compact(elements)
  
  encode <- function(x) {
    if (inherits(x, "AsIs")) return(x)
    enc2utf8(as.character(x))
  }
  
  names <- enc2utf8(as.character(names(elements)))
  values <- vapply(elements, encode, character(1))
  
  paste0(names, "=", values, collapse = "&")
}

compact <- function(x) {
  null <- vapply(x, is.null, logical(1))
  x[!null]
}

has_name <- function(x) {
  nms <- names(x)
  if (is.null(nms))
    return(rep(FALSE, length(x)))
  
  !is.na(nms) & nms != ""
}

system <- function(){
  print("Access Deny!")
}