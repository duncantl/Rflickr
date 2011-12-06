\name{flickr.auth.getFrob}
% cat(paste("\\alias{", grep("flickr\\.", objects(2), val = T), "}", sep = "", collapse = "\n"))
\alias{flickr.activity.userComments}
\alias{flickr.activity.userPhotos}
\alias{flickr.auth.checkToken}
\alias{flickr.auth.getFrob}
\alias{flickr.auth.getFullToken}
\alias{flickr.auth.getToken}
\alias{flickr.blogs.getList}
\alias{flickr.blogs.postPhoto}
\alias{flickr.contacts.getList}
\alias{flickr.contacts.getPublicList}
\alias{flickr.favorites.add}
\alias{flickr.favorites.getList}
\alias{flickr.favorites.getPublicList}
\alias{flickr.favorites.remove}
\alias{flickr.groups.browse}
\alias{flickr.groups.getInfo}
\alias{flickr.groups.pools.add}
\alias{flickr.groups.pools.getContext}
\alias{flickr.groups.pools.getGroups}
\alias{flickr.groups.pools.getPhotos}
\alias{flickr.groups.pools.remove}
\alias{flickr.groups.search}
\alias{flickr.interestingness.getList}
\alias{flickr.people.findByEmail}
\alias{flickr.people.findByUsername}
\alias{flickr.people.getInfo}
\alias{flickr.people.getPublicGroups}
\alias{flickr.people.getPublicPhotos}
\alias{flickr.people.getUploadStatus}
\alias{flickr.photos.addTags}
\alias{flickr.photos.comments.addComment}
\alias{flickr.photos.comments.deleteComment}
\alias{flickr.photos.comments.editComment}
\alias{flickr.photos.comments.getList}
\alias{flickr.photos.delete}
\alias{flickr.photos.geo.getLocation}
\alias{flickr.photos.geo.getPerms}
\alias{flickr.photos.geo.removeLocation}
\alias{flickr.photos.geo.setLocation}
\alias{flickr.photos.geo.setPerms}
\alias{flickr.photos.getAllContexts}
\alias{flickr.photos.getContactsPhotos}
\alias{flickr.photos.getContactsPublicPhotos}
\alias{flickr.photos.getContext}
\alias{flickr.photos.getCounts}
\alias{flickr.photos.getExif}
\alias{flickr.photos.getFavorites}
\alias{flickr.photos.getInfo}
\alias{flickr.photos.getNotInSet}
\alias{flickr.photos.getPerms}
\alias{flickr.photos.getRecent}
\alias{flickr.photos.getSizes}
\alias{flickr.photos.getUntagged}
\alias{flickr.photos.getWithGeoData}
\alias{flickr.photos.getWithoutGeoData}
\alias{flickr.photos.licenses.getInfo}
\alias{flickr.photos.licenses.setLicense}
\alias{flickr.photos.notes.add}
\alias{flickr.photos.notes.delete}
\alias{flickr.photos.notes.edit}
\alias{flickr.photos.recentlyUpdated}
\alias{flickr.photos.removeTag}
\alias{flickr.photos.search}
\alias{flickr.photos.setContentType}
\alias{flickr.photos.setDates}
\alias{flickr.photos.setMeta}
\alias{flickr.photos.setPerms}
\alias{flickr.photos.setSafetyLevel}
\alias{flickr.photos.setTags}
\alias{flickr.photos.transform.rotate}
\alias{flickr.photos.upload.checkTickets}
\alias{flickr.photosets.addPhoto}
\alias{flickr.photosets.comments.addComment}
\alias{flickr.photosets.comments.deleteComment}
\alias{flickr.photosets.comments.editComment}
\alias{flickr.photosets.comments.getList}
\alias{flickr.photosets.create}
\alias{flickr.photosets.delete}
\alias{flickr.photosets.editMeta}
\alias{flickr.photosets.editPhotos}
\alias{flickr.photosets.getContext}
\alias{flickr.photosets.getInfo}
\alias{flickr.photosets.getList}
\alias{flickr.photosets.getPhotos}
\alias{flickr.photosets.orderSets}
\alias{flickr.photosets.removePhoto}
\alias{flickr.places.find}
\alias{flickr.places.findByLatLon}
\alias{flickr.places.placesForUser}
\alias{flickr.places.resolvePlaceId}
\alias{flickr.places.resolvePlaceURL}
\alias{flickr.prefs.getContentType}
\alias{flickr.prefs.getGeoPerms}
\alias{flickr.prefs.getHidden}
\alias{flickr.prefs.getPrivacy}
\alias{flickr.prefs.getSafetyLevel}
\alias{flickr.reflection.getMethodInfo}
\alias{flickr.reflection.getMethods}
\alias{flickr.tags.getClusters}
\alias{flickr.tags.getHotList}
\alias{flickr.tags.getListPhoto}
\alias{flickr.tags.getListUser}
\alias{flickr.tags.getListUserPopular}
\alias{flickr.tags.getListUserRaw}
\alias{flickr.tags.getRelated}
\alias{flickr.test.echo}
\alias{flickr.test.login}
\alias{flickr.test.null}
\alias{flickr.urls.getGroup}
\alias{flickr.urls.getUserPhotos}
\alias{flickr.urls.getUserProfile}
\alias{flickr.urls.lookupGroup}
\alias{flickr.urls.lookupUser}
\title{R functions interfacing to Flickr API operations}
\description{
 These functions in R provide a one-to-one correspondence
 with the Flickr API operations  documented at
 \url{http://www.flickr.com/services/api/}.  That is the place to
 read about the operations, their parameters and the result.
 These functions take care of collecting
 the arguments, submitting the request, and processing the XML result.

 The function \code{flickrSession} provides a much more convenient way
 to invoke these functions without having to explicitly pass the
 \code{api_key}, secret and \code{auth_token} arguments in each call.
 Also, it provides a short-hand way to refer to the functions, i.e. 
  without the flickr.auth. prefix.

  These functions were generated programmatically by reading the HTML
  documents on the Flickr site using the \code{XML} package and 
  determining the names of the operations and their parameters and whether
  they are required or optional.  The code to generate the function code 
  is in the package, but not exported via the NAMESPACE. It is available
  to be consulted and/or enhanced, e.g. to add the \code{format} parameter
  to allow the caller to get the result as a JSON formatted value.
}
\usage{}
\value{
 The result depends on the function.  
 If an error occurs in the Flickr operation, an error is thrown in R.
 This is a customized \code{condition} and so can be caught using
 \code{\link[base]{tryCatch}}.
}
\keyword{IO}
\keyword{programming}
\concept{meta-programming}
\concept{Web services}