\name{addSignature}
\alias{addSignature}
\alias{processFlickrResponse}
\title{Internal functions that need to be exported}
\description{
 These are really internal functions for the \code{Rflickr}
 package that need to be exported so that they are visible/accessible
 by functions in the list \code{FlickrFunctions}.
 These functions are used by the \code{FlickrSession} objects
 but are not in the \code{Rflickr} name space.
  Since the  use these internal functions, the internal functions
 must be exported.  We could modify the function definitions
 to use \code{Rflickr:::addSignature}, etc. 
 or modify the environments of the functions. But this is 
 more of an example at present than a highly engineered 
 piece of software. Exporting these functions is not
 really a big deal and it is useful for people to see them
if they want to understand what is happening.

 \code{addSignature} is repsonsible for creating the \code{api_sig}
 parameter for the form submission. It creates an md5 encryption
 of the other form parameters.

 \code{processFlickrResponse} parses the body of the HTTP response
 from the Flickr operation and throws an error if an error occurred
 or parses the XML content.
}
\usage{
addSignature(secret, ..., .args = list(...), removeMethod = FALSE)
processFlickrResponse(txt, method = character(), api_key = character(),
                       secret = character(), .convert = NULL,
                        format = character()) 
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{\dots}{ the name = value pairs for the form submission }
  \item{.args}{a way to avoid using the \dots parameter and specify and existing list.}
  \item{removeMethod}{ignored!}
  \item{txt}{the body of the HTTP response}
  \item{method}{the name of the Flickr operation being called when the error occurred.}
  \item{api_key}{the \code{api_key} obtained when registering the application with Flickr.}
  \item{secret}{the secret associated with the \code{api_key}}
  \item{.convert}{ a function or missing value \code{NA}. If this is a
    function, it is called with the \code{XMLDocument} generated from
    parsing the result of the HTTP response from the operation
    invocation.  If this is \code{NA}, the text of the HTTP response is
    returned, not the XML tree.
  }
   \item{format}{an empty character vector or the string \code{"json"}
         indicating the format of the HTTP response.} 
}
\value{
}
\references{ http://www.flickr.com/services/api}
\author{Duncan Temple Lang}
\seealso{
  \code{\link{authenticate}}
  \code{\link{flickrSession}}
  All of the \code{flickr.*} functions.
}
\keyword{IO}
\keyword{programming}

