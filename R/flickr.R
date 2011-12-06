addSignature =
function(secret, ..., .args = list(...), removeMethod = FALSE)
{
     # This is the change.
  .args = .args[ sapply(.args, length) != 0 ]

  .args = .args[order(names(.args))]
  idx = seq(along = .args)
  if(removeMethod) {
     i = match("method", names(.args))
     idx = idx[-i]
  }
  x = paste(secret, paste(names(.args)[idx], .args[idx], sep = "", collapse = ""), sep = "")
  .args[["api_sig"]] = digest(x, "md5", serialize = FALSE)
  .args
}

flickrSession = 
function(secret,  auth_token, api_key)
{
  data(FlickrFunctions)
   # Need to change the name space so that addSignature, etc. are found in the namespace.
  structure(c(secret = secret, api_key = api_key, auth_token = auth_token),
            class = "FlickrSession")
}


matchFlickrName =
function(name, asFunction = FALSE)
{
  FlickrFunctions[["flickr.upload"]] = flickr.upload
  ops = names(FlickrFunctions)
 if(name %in% ops)
     i = name   # return(if(asFunction) FlickrFunctions[[name]] else name)
  else if(length(i <- grep(paste(name, "$", sep = ""), ops, val = TRUE)) == 1) {
     
  } else {
    i = grep(paste(".*", name, ".*", sep = ""), ops)
#   i = agrep(name, names(FlickrFunctions))
    if(length(i) == 0)
      stop("no flickr method that matches ", name)
    else if(length(i) > 1) {
        # possible names.
      ops = names(FlickrFunctions)[i]
          # always true!!!
      if(!any(name == names(FlickrFunctions)))
         stop("Ambiguous method ", name, ". Matches ", paste(ops, collapse = ", "))
      else 
        FlickrFunctions[[name]] 
    } else
       FlickrFunctions[[names(FlickrFunctions)[i]]] 
  }

  if(asFunction) FlickrFunctions[[i]] else names(FlickrFunctions)[i]
}

"$.FlickrSession" =
function(x, name)
{
  f = matchFlickrName(name, asFunction = TRUE)

     # Put the values from the session object (i.e. auth_token, secret, api_key)
     # into function defaults.
  formals(f)[names(x)] = x

  f
}


print.FlickrSession = 
function(x, ...)
 print(paste("(private) Flickr session: ", x["api_key"]))



authenticate =
function(api_key, secret, frob = flickr.auth.getFrob(secret, character(), api_key), wait = 10,
          permission = "read", ...)
{
   useBrowser = TRUE
   if(useBrowser) {
     args = addSignature(secret, api_key = api_key, perms= permission, frob=frob)
     url = paste("http://flickr.com/services/auth/", paste(names(args), args, sep = "=", collapse = "&"), sep = "?")
     browseURL(url)

        # Wait to make certain the flickr database gets updated with the new frob.
     Sys.sleep(wait)  
   }
   
   args = addSignature(secret, method = "flickr.auth.getToken", api_key = api_key, frob = frob)
   ans = getForm("http://api.flickr.com/services/rest/",  .params = args, ...)
   token = processFlickrResponse(ans)$token

   token
}


processFlickrResponse =
function(txt, method = character(), api_key = character(), secret = character(), .convert = NULL, format = character())
{
  if(length(format) && format == "json") {
    library(RJSONIO)
    txt = substring(txt, nchar("jsonFlickrApi(") + 1, nchar(txt)-1)
    ans = fromJSON(txt)
    if(ans$stat != 'ok')
      stop("Flickr error")
    else
      return(ans[ - match("stat", names(ans))])
  }
  
  doc = xmlParse(txt, asText = TRUE) # xmlTreeParse(txt) 
  status = xmlGetAttr(xmlRoot(doc), 'stat')  
  if(status != 'ok')  {
     err = xmlRoot(doc)[[1]]
     e =structure(list(message = xmlGetAttr(err, "msg"),
                       error.code = xmlGetAttr(err, "code"),
                       method = method,
                       api_key = api_key),
                  class = c("FlickrError", "simpleError", "error", "condition") )
     stop(e)
  }

  if(FALSE) {
   ans = xmlChildren(xmlRoot(doc))
   if(length(ans) == 1) {
     if(xmlSize(ans[[1]]))
        xmlValue(ans[[1]])
     else
       ans[[1]]
   } else
     ans
 } else if(is.null(.convert))
    xmlToList(xmlRoot(doc)[[1]])
 else if(is.function(.convert))
     .convert(doc)
 else if(is.na(.convert))
      txt
}

if(FALSE) {
g = flickrSession(secret, api_key, token)
g$getHotList()
g$checkToken(, token)
}
