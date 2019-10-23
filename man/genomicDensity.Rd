\name{genomicDensity}
\alias{genomicDensity}
\title{
Calculate genomic region density
}
\description{
Calculate genomic region density
}
\usage{
genomicDensity(
    region,
    window.size = 1e7,
    n.window = NULL,
    overlap = TRUE,
    chr.len = NULL)
}
\arguments{

  \item{region}{Genomic positions. It can be a data frame with two
  \item{window.size}{Window size to calculate genomic density
  \item{n.window}{number of windows, if it is specified, \code{window.size} is ignored
  \item{overlap}{Whether two neighbouring windows have half overlap
  \item{chr.len}{the chromosome length. The value should be named vector

}
\details{
It calculate the percent of each genomic windows that is covered by the input regions.
}
\value{
If the input is a two-column data frame, the function returns a data frame with three columns: 
start position, end position and percent of overlapping. And if the input is a bed-format
data frame, there will be an additionally chromosome name column.
}
\examples{
bed = generateRandomBed()
bed = subset(bed, chr == "chr1")
head(genomicDensity(bed))
}