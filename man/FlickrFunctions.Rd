\name{FlickrFunctions}
\alias{FlickrFunctions}
\alias{paramInfo}
\docType{data}
\title{Functions objects for interfacing to Flickr operations via a FlickrSession object}
\description{
 These are the functions that are used by the \code{FlickrSession} object
 created in a call to \code{\link{flickrSession}} to call the 
 Flickr API operations. 
 These are adapted from the corresponding \code{flickr.*} (e.g. \code{flickr.tags.getHotList})
 functions within the package itself. The order of the parameters is changed to make the
 secret, \code{api_key} and \code{auth_token} parameters appear at the end since they 
 are supplied in the calls by the \code{FlickrSession} object itself and not by the
 caller within each operation call.

 These are automatically loaded into the R session in the call to \code{\link{flickrSession}}.

 \code{paramInfo} is a list containing information about the set of parameters for each of the 
  113 Flickr operations. Each element is a logical vector and indicates whether the
 value is required (\code{TRUE}) or optional (\code{FALSE}). 
  The names of the parameters are given by the names  of the vector.

  The parameter information was extracted programmatically via (unexported) code in this package
  using the \code{\link[XML]{htmlTreeParse}} function in the \code{XML} package.
}
\usage{data(FlickrFunctions)}
\format{
  A list of 113 functions.
}
\source{
  http://www.flickr.com/services/api/
}
\references{
  http://www.flickr.com/services/api/
}
\examples{
data(FlickrFunctions)
}
\keyword{datasets}
