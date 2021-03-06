#' Add/remove CSS class
#'
#' Add or remove a CSS class from an HTML element.
#'
#' \strong{\code{addClass}} adds a CSS class, \strong{\code{removeClass}}
#' removes a CSS class, \strong{\code{toggleClass}} adds the class if it is
#' not set and removes the class if it is already set.
#'
#' CSS is a simple way to describe how elements on a web page should be
#' displayed (position, colour, size, etc.).  You can learn the basics
#' at \href{http://www.w3schools.com/css/}{W3Schools}.
#'
#' @param ... The following parameters are available:
#' \tabular{ll}{
#'   \strong{\code{id}}     \tab The id of the element/Shiny tag \cr
#'   \strong{\code{class}}  \tab The CSS class to add/remove \cr
#' }
#' @seealso \code{\link[shinyjs]{useShinyjs}},
#' \code{\link[shinyjs]{runExample}},
#' \code{\link[shinyjs]{inlineCSS}},
#' @note \code{shinyjs} must be initialized with a call to \code{useShinyjs()}
#' in the app's ui.
#' @examples
#' if (interactive()) {
#'   shiny::shinyApp(
#'     ui = shiny::fluidPage(
#'       useShinyjs(),  # Set up shinyjs
#'       # Add a CSS class for red text colour
#'       inlineCSS(list(.red = "background: red")),
#'       shiny::actionButton("btn", "Click me"),
#'       shiny::p(id = "element", "Watch what happens to me")
#'     ),
#'     server = function(input, output, session) {
#'       shiny::observe({
#'         if (input$btn == 0) {
#'           return(NULL)
#'         }
#'         # Change the following line for more examples
#'         toggleClass("element", "red")
#'       })
#'     }
#'   )
#' }
#' \dontrun{
#'   # The shinyjs function call in the above app can be replaced by
#'   # any of the following examples to produce similar Shiny apps
#'   toggleClass(class = "red", id = "element")
#'   addClass("element", "red")
#'   removeClass("element", "red")
#' }
#' @name classFuncs
NULL

#' @export
#' @rdname classFuncs
addClass <- jsFunc
#' @export
#' @rdname classFuncs
removeClass <- jsFunc
#' @export
#' @rdname classFuncs
toggleClass <- jsFunc
