\name{authenticate}
\alias{authenticate}
\title{Log-in to Flickr to create a session} 
\description{
 This function logs into Flickr using the given \code{api_key} which has been
established for the application and the secret which is created when
the application is registered.  This contacts Flickr and gets a "frob"
and then uses that to get the user to grant read permission on the
Flickr account.  It does this by display a page in a Web browser and
waiting for the user to click on the green button \code{"Ok, I'll
allow it"}.  Then it contacts Flickr again to get a token for the
session. This should be saved and passed in every call to a Flickr API
operation. Alternatively, it can be stored in a \code{FlickrSession}
object created by calling \code{\link{flickrSession}}.  This hides the
need to pass the values of the secret, \code{api_key} and token in every
operation call.
}
\usage{
authenticate(api_key, secret,
             frob = flickr.auth.getFrob(secret, character(), api_key),
             wait = 10, permission = "read", ...)
}
\arguments{
  \item{api_key}{a string. See the documentation in Rflickr.xml in the doc/ directory for how to register an application and 
     create an \code{api_key} and secret.}
  \item{secret}{a string that comes with the creation of an application.}
  \item{frob}{a string. Typically one would never specify this. It is a parameter to allow those
     who want to get the frob themselves provide it to the call to \code{\link{flickr.auth.getToken}}.}
   \item{wait}{the number of seconds to wait in order to give the user
     an opportunity to authorize the frob via their web browser.}
   \item{permission}{one of \code{"read"}, \code{"write"} or
     \code{"delete"} that grant successively more privileges.
   }
   \item{\dots}{additional parameters that are passed on to
     \code{\link[RCurl]{getForm}},
       i.e. other parameters for the form or \code{.opts} to specify
       CURL options.}
}
\details{
  This calls flickr.auth.getFrob and flickr.auth.getToken to intiate the session
  with Flickr.
}
\value{
  a character string which is to be used as the value of 
  the \code{auth_token} parameter in all calls to Flickr operations
  via the \code{flickr.*} functions in this package.
}
\references{ http://www.flickr.com/services/api}
\author{Duncan Temple Lang}
\seealso{
  \code{\link{flickrSession}}
  All of the \code{flickr.*} functions.
}
\examples{
\dontrun{
  tok = authenticate("myHexadecimalAppId243423abc4238948", "a4c5f6...")
  flickr.tags.getHotList(secret, tok, api_key)
}
}
\keyword{IO}
\keyword{programming}
\concept{authentication}
