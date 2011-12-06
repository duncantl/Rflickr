\name{Rflickr}
\alias{Rflick}
\title{Overview of Rflickr}
\description{
 This package provides an interface from R to the Flickr API.
 The API is a Web service that uses REST.
 There are also SOAP and XML-RPC versions, but here we focus on REST.

 There are two forms of the interface. 
 One  consists of regular R functions corresponding to the Flickr API.
 For eac method/operation in the API, the corresponding function has
 been generated programmatically. 
 It has the same parameters but additionally has two required parameters that are not
 listed in the Flickr document. These are the secret and \code{api_key} 
 that you have obtained when registering your application with Flickr via the
 page \url{http://www.flickr.com/services/api/keys/apply/}.
 This form requires that all these private authentication data must be 
 specified in each call. This is tedious and insecure.

 The \code{\link{flickrSession}} function allows one to cache that information and have
 it be passed to each operation call automatically.  This second interface
 also allows for using shorter versions of the operation names.  All one need
 do is uniquely identify the operation name.
 One creates a session via a call to \code{\link{flickrSession}} and then
 invoke operations via the \code{\$} operator, e.g.
  \code{session$getHotList()} which invokes the \code{flickr.tags.getHotList}
 operation.

 For each operation, the R function has the regular parameters listed in the 
 Flickr API documentation (\url{http://www.flickr.com/services/api/}).
 In addition to these, there are the \code{auth_token} and \code{secret}
 parameters. For the regular R functions (non-session based), these appear
 in the first positions of the argument list; for the session-based interface,
 these appear at the end as the user will rarely, if ever, specify them directly.

 In addition to these authentication parameters, there are 5 additional parameters
 that we have introduced.   The first is \code{format} which may take the value
 \code{"json"} to get the response via the JSON format. (See \url{http://www.json.org}
 although the results are transparently converted to R objects.)

 The next additional parameter is \code{.convert}. This is expected to
 be an R function that takes a single argument - the
 \code{XMLDocument} from parsing the result of the operation.  This
 function is called if there is no error in the invocation of the
 operation.  If one wants the exact text of the body of the response,
 pass \code{NA} for this parameter.
 
 The third extra parameter is \code{.curl}. This can be used to specify
  the curl handle/object that is used to make the HTTP request that 
  performs the actual communication. By default, each invocation 
 creates a new handle.  However, if one wants to reuse an object
 with particular settings, one can create it separately and then 
 pass it in a group of different calls.  This allows one to use
 the HTTP 1.1 facility of keeping the connection open.
 It also allows one to specify the options to the curl handle
 just once and reuse them in multiple calls.

 The final two additional parameters are \dots and \code{.opts} which is 
 by default just the list of \code{name = value} pairs.
 These are options that are passed on to the
 \code{\link[RCurl]{getForm}}  function as the options to parameterize
 the curl handle.
 These allow us to specify specific parameters for controlling this
 curl request. The collection of available options can be seen from
 the function \code{\link[RCurl]{getCurlOptionsConstants}}.
}
\author{Duncan Temple Lang}
\seealso{
\url{http://www.flickr.com/services/api}
\code{\link{authenticate}}
\code{\link{flickrSession}}
}
\examples{
\dontrun{

tok = authenticate(api_key, secret)
flickr.tags.getHotList(secret, tok, api_key)    
    
s$getHotList(verbose = TRUE, format = 'json')
s$getHotList(verbose = TRUE, .convert = NA)
s$getHotList(verbose = TRUE, .convert = xmlRoot)    
}
}  