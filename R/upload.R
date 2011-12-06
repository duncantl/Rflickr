flickr.upload  =
function(secret, auth_token, api_key, image,
          title = NA, description = NA,
           is_family = NA, is_friend = NA, is_public = NA,
            safety_level = NA, tags = character(), ...,
         .opts = list(), curl = getCurlHandle(),
         .url = "http://api.flickr.com/services/upload/")
{
  if(is.raw(image)) {
     data = fileUpload(, image) 
  } else
     data = fileUpload(image) 

  payload = list(api_key = api_key, auth_token = auth_token, ...)
  if(!is.na(title))
     payload[["title"]] = as.character(title)
  if(!is.na(description))
     payload[["description"]] = as.character(description)
  if(!is.na(is_family))
     payload[["is_family"]] = as.character(as.integer(is_family))
  if(!is.na(is_friend))
     payload[["is_friend"]] = as.character(as.integer(is_friend))
  if(!is.na(is_public))
     payload[["is_public"]] = as.character(as.integer(is_public))
  if(!is.na(safety_level))
     payload[["safety_level"]] = as.character(as.integer(safety_level))
  if(length(tags))
     payload[["tags"]] = paste(as.character(tags), collapse = " ")

  args = addSignature(secret, .args = payload)
  args[["photo"]] = data 

  ans = postForm(.url, .params = args, .opts = .opts, curl = curl, style = "HTTPPOST")
  
  processFlickrResponse(ans, 'upload', api_key, secret)
}
