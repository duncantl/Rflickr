\name{flickrSession}
\alias{flickrSession}
\title{Constructor for convenience object  for Flickr calls}
\description{
 This function and the associated class and methods
 provide a mechanism for invoking Flickr API operations
 more conveniently  from R than the regular
 \code{flickr.*} functions in this package.
 Using this function \code{flickrSession}, 
 we create a \code{FlickrSession} object having
 received  an \code{auth_token} via \code{\link{authenticate}}
 (and previously having registered an application with
  Flickr and obtaining an \code{api_key} and secret).
 The \code{\$} method for this object uses 
 matching to allow users refer to Flickr API
  functions using shorter names, e.g. getHotList
 rather than flickr.tags.getHotList.
 Also, it inserts the \code{api_key}, \code{auth_token} and secret
 into each call, removing the need to explicitly 
  specify them in calls to the top-level 
  \code{flickr.*} functions in this package.
 This is both more convenient and also 
 makes the R commands/scripts more secure
 by not having private information visible
 in the calls.  The \code{FlickrSession}
 object can be created once outside of the
 script.
}
\usage{
flickrSession(secret, auth_token, api_key)
}

\arguments{
  \item{api_key}{a string. See the documentation in Rflickr.xml in the doc/ directory for how to register an application and 
     create an \code{api_key} and secret.}
  \item{auth_token}{the string returned from a call to \code{\link{authenticate}}
      (or directly from \code{\link{flickr.auth.getToken}}.}
  \item{secret}{a string that comes with the creation of an application.}
}
\details{
}
\value{
 An object of class \code{FlickrSession}.
 This has a \code{$} method for  easy invocation of Flickr operations.
}
\references{ http://www.flickr.com/services/api}
\author{Duncan Temple Lang}
\seealso{
  \code{\link{flickrSession}}
  All of the \code{flickr.*} functions.
}
\examples{
\dontrun{
  hot = flickr.tags.getHotList(secret, token, api_key)

  s = flickrSession(secret, authenticate(api_key, secret), api_key)
  s$getHotList()

  now = Sys.time()
  dates = paste(as.integer(c(now  - 21*60*60*24, now)), collapse = ",")
  s$getCounts(dates)
}
}
\keyword{IO}
\keyword{programming}
\concept{Web Service}
\concept{REST}

