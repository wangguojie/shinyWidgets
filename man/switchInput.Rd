% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/input-switch.R
\name{switchInput}
\alias{switchInput}
\title{Bootstrap Switch Input Control}
\usage{
switchInput(inputId, label = NULL, value = FALSE, onLabel = "ON",
  offLabel = "OFF", onStatus = NULL, offStatus = NULL, size = "default",
  disabled = FALSE)
}
\arguments{
\item{inputId}{The \code{input} slot that will be used to access the value.}

\item{label}{Display a text in the center of the switch.}

\item{value}{Initial value (TRUE or FALSE).}

\item{onLabel}{Text on the left side of the switch (TRUE)}

\item{offLabel}{Text on the right side of the switch (FALSE)}

\item{onStatus}{Color (bootstrap status) of the left side of the switch (TRUE)}

\item{offStatus}{Color (bootstrap status) of the right side of the switch (FALSE)}

\item{size}{Size of the buttons ('default', 'mini', 'small', 'normal', 'large')}

\item{disabled}{Logical. Disable the switch}
}
\value{
A switch control that can be added to a UI definition.
}
\description{
Create a toggle switch.
}
\examples{
\dontrun{
## Only run examples in interactive R sessions
if (interactive()) {

ui <- fluidPage(
  switchInput(inputId = "somevalue"),
  verbatimTextOutput("value")
)
server <- function(input, output) {
  output$value <- renderPrint({ input$somevalue })
}
shinyApp(ui, server)
}
}

}
