\name{flickr.upload}
\alias{flickr.upload}
\title{Upload a photo to Flickr account}
\description{
  This function provides the mechanism to upload an image to a flickr
  account, assuming that we have the relevant write privileges.
  One can specify a title, description, and control who can
  view the photo and the safety_level.
}
\usage{
flickr.upload(secret, auth_token, api_key, image,
               title = NA, description = NA,
                is_family = NA, is_friend = NA, is_public = NA,
                 safety_level = NA, tags = character(), ...,
                  .opts = list(), curl = getCurlHandle(),
                   .url = "http://api.flickr.com/services/upload/")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{secret}{The secret for the API}
  \item{auth_token}{the authentication token obtained by the user granting
    access to the Flickr account via \code{\link{authenticate}}.}
  \item{api_key}{the key for the application making the request}
  \item{image}{the name of the file containing the image, or a character
    or raw  vector giving the contents of the image}
  \item{title}{an optional title for the image to be displayed in Flickr}
  \item{description}{an optional description for the image to be
    displayed in Flickr}
  \item{is_family}{a logical value controlling whether the image can be
    viewed by family}
  \item{is_friend}{a logical value controlling whether the image can be
    viewed by friends}
  \item{is_public}{a logical value controlling whether the image can be
    viewed by everyone}
  \item{safety_level}{an integer/logical value controlling whether the
    image is safe for general viewing}
  \item{tags}{a character vector of tags to associate with the image}
  \item{\dots}{additional parameters that are passed on in the Flickr request}
  \item{.opts}{a list of CURL options}
  \item{curl}{a curl handle that can be reused across HTTP requests}
  \item{.url}{the URL of the REST services. This is rarely specified by
    the caller.}
}
\value{
  The string id of the new photo.
}
\references{
Flickr API, specifically \url{http://www.flickr.com/services/api/upload.api.html}.
}
\author{
Duncan Temple Lang
}
\seealso{
 \code{\link{authenticate}}
}
\examples{
\dontrun{
    # we would need the secret, token and api_key

 f = tempfile()
 png(f)
 plot(1:10)
 dev.off()

 o = flickr.upload(secret, token, api_key,
                   f, # the name of the file containing the picture
                   title = "A sample plot from R",
                   description = "Created in R via plot(1:10)",
                   content_type = "1",
                   is_family = "0",
                   is_friend = "0",
                   is_public = "0",
                   safety_level = "1",
                   tags = 'other',
                   .opts = list(verbose = TRUE, followlocation = TRUE))
}
}
\keyword{programming}
\keyword{interface}

