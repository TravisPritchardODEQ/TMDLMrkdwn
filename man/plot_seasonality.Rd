% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_seasonality.R
\name{plot_seasonality}
\alias{plot_seasonality}
\title{plot_seasonality}
\usage{
plot_seasonality(df, station_col = "MLocID",
  date_col = "SampleStartDate", result_col = "Result_Numeric",
  temp_criteria = NULL, spawn_criteria = 13, spawn_start = NULL,
  spawn_end = NULL, fish_use = NULL, buffer = 0.8,
  highlight_year = NULL, rm_labels = FALSE, lab_impair_y_nudge = 0,
  lab_spawn_y_nudge = 0, lab_spawn_x_nudge = 0, lab_crit_y_nudge = 0,
  lab_crit_x_nudge = 0, y_axis_max = NA, y_label = NULL,
  rm_legend = FALSE)
}
\arguments{
\item{df}{Dataframe of data to be graphes}

\item{station_col}{Name of column containting station info. Date should be formatted in y-m-d}

\item{result_col}{Name of column containing result information}

\item{temp_criteria}{Temperature criteria. Numeric}

\item{spawn_criteria}{Spawning criteria}

\item{spawn_start}{Start of spawning season. fprmat as Character- "mm-dd"}

\item{spawn_end}{End of spawning season. fprmat as Character- "mm-dd"}

\item{buffer}{Buffer value}

\item{highlight_year}{Optional year to hightlight on graph}

\item{rm_labels}{if TRUE, remove labels from graph}

\item{lab_impair_y_nudge}{Move the Impairement Unlikely label up or down}

\item{lab_spawn_y_nudge}{Move the spawning criteria label up or down}

\item{lab_spawn_x_nudge}{Move the spawning criteria label left or right}

\item{lab_crit_y_nudge}{Move criteria label up or down}

\item{lab_crit_x_nudge}{Move criteria left or right}

\item{rm_legend}{If TRUE, remove the legend}
}
\value{
plot of all 7DADM data, with criteria and identified unlikely impariment seasons
 \if{html}{\figure{seasonality.png}{Plot}}
 \if{latex}{\figure{seasonality.png}{options: width=0.5in}}
}
\description{
This function produces a graph pf seven day average daily maximum river
temperatures for a single monitoring location. These graphs are intended
to be placed in the thrid section of the temperture TMDL. Choose a monitoring location with
sufficient continuous temperature (many years worth of continuous data).
Criteria line is drawn based of fish use station desgination.
Blue boxed represent times of unlikely impairments. They are drawn at the
first and last day in dataset with a value of buffer * criteria.
}
\examples{
 \dontrun{

 library(AWQMSdata)
 library(TMDLMrkdwn)

 data <- AWQMS_Data(station = '14034470', char = "temperature, water", stat_base = "7DADM")


 plot_seasonality(df = data,
                  station_col = 'MLocID',
                  date_col = 'SampleStartDate',
                  result_col = 'Result_Numeric',
                  temp_criteria = 18,
                  spawn_criteria = 13,
                  spawn_start = "05-01",
                  spawn_end = "10-01",
                  fish_use = 'Redband',
                  lab_spawn_x_nudge = 60,
                  rm_legend = TRUE)

}



}
