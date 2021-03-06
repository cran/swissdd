% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_nationalvotes.R
\name{get_nationalvotes}
\alias{get_nationalvotes}
\title{Get national results and counting status in real time or for selected dates or a time range in the past}
\usage{
get_nationalvotes(
  geolevel = "municipality",
  votedates = NULL,
  from_date = NULL,
  to_date = NULL,
  language = "DE"
)
}
\arguments{
\item{geolevel}{geographical level for which the results should be loaded. Options: "national", "canton", "district", "municipality" or "zh_counting_districts".#' @param votedates dates of the ballots to be selected. Default: most recent ballot available. Format: "YYYY-MM-DD".}

\item{votedates}{dates of the ballots to be selected. Default: most recent ballot available. Format: "YYYY-MM-DD".}

\item{from_date}{starting point in time from which vote results should be retrieved. Format: "YYYY-MM-DD".}

\item{to_date}{end point in time to which vote results should be retrieved. Format: "YYYY-MM-DD".}

\item{language}{defines the language of the vote title. Options: "DE" for German, "FR" for French, "IT" for Italian or "RM" for Romansh.}
}
\value{
a tibble containing the results
}
\description{
\code{get_nationalvotes} is one of the two main functions of swissvote package. It allows to retrieve the results and the counting status for national ballots.
}
\details{
get_nationalvotes - retrieve vote results for national ballots at district- or municipality level for selected dates or a given date range.
}
\examples{
\donttest{
# Selection by range
results <- get_nationalvotes(
    geolevel = "district", 
    from_date = "2018-01-01",
    to_date = "2018-12-31"
    )

# Selection by end date only
get_nationalvotes(to_date = "1983-12-04")
 }
# Selection of a specific vote date
get_nationalvotes(votedates = "2014-02-09")

}
