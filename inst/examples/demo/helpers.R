# the allowed expressions to let the user run
examples <- c(
  'toggle("btn")',
  'hide("btn")',
  'show("btn")',
  'info(R.Version())',
  'onclick("btn", info(date()))',
  'toggle("btn", TRUE, "fade", 2)',
  'toggle(id = "btn", anim = TRUE, time = 1, animType = "slide")',
  'toggleState("btn")',
  'disable("btn")',
  'enable("btn")',
  'text("btn", "What a nice button")',
  'text("btn", paste("The time is", date()))',
  'addClass("btn", "green")',
  'removeClass("btn", "green")',
  'toggleClass("btn", "green")'
)

# to make sure the user doesn't try to send his own expression to run,
# assign each expression to an integer value so that the integer is what
# Shiny will report rather than an actual R expression
examplesNamed <- seq_along(examples)
names(examplesNamed) <- examples

# show some help text explaining each function
helpText <- list(
  "toggle" = "will alternate between showing and hiding the button below",
  "hide" = "will hide the button below",
  "show" = "will make the button below visible",
  "info" = "will show a message to the user",
  "onclick" = "will run the given R expression when the button is clicked",
  "toggleState" = "will alternate between enabling and disabling the button below",
  "disable" = "will disable the button below from being clicked",
  "enable" = "will allow the button below to be clicked",
  "text" = "will change the HTML content of an element",
  "addClass" = "will add a CSS class to an element",
  "removeClass" = "will remove a CSS class from an element",
  "toggleClass" = "will alternate between adding and removing a class from an element"
)
helpTextMap <-
  match(
    vapply(examples, function(x) strsplit(x, "\\(")[[1]][1],
           character(1), USE.NAMES = FALSE),
    names(helpText)
  )
