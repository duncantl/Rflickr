
switchParams = 
function(params, f) {
 
 paramList = formals(f) 
 idx = seq(along = paramList)
 formals(f) = paramList[ c(idx[-c(1,2,3)], c(2, 3, 1))]

 f
}

genFunc =
function(method, params)
{
     # add extra the regular additional parameters (secret & auth_token) to the logical
     # vector as required parameters.
   params = c(secret = TRUE, auth_token = TRUE, params)
      # remove duplicates in case auth_token is already there.
   params = params[!duplicated(names(params))]
   defaults = rep("", length(params))
   defaults[!params] = "= character(0)"

   sig.args = c(names(params), "format")
   str = c(paste("function(",
          paste(names(params), defaults, collapse = ", "),
          ", format = character(), .convert = NULL, .curl = getCurlHandle(), ..., .opts = list(...))"),
          "{",
          paste("    args = addSignature( method =", sQuote(method), ", ",
	                       paste(sig.args, sig.args, sep = " = ", collapse = ", "), 
                            ")"),
          "    ans = getForm('http://api.flickr.com/services/rest/',  .params = args, .opts = .opts, curl = .curl)",
          paste("    processFlickrResponse(ans, ", sQuote(method), ", api_key, secret, .convert = .convert, format = format)", sep = ""),
          "}")           

   f = eval(parse(text = paste(str, collapse = "\n")), globalenv())
   attr(f, "source") = NULL
   environment(f) = globalenv()

   f
}


discoverParameters = 
function(page)
{
  doc = htmlTreeParse(page, useInternal = TRUE)
  argsNode = doc[["//h3[text()='Arguments']"]]
  dl = getSibling(getSibling(argsNode))
  els = xmlSApply(dl, xmlValue)
  params = els[names(els) == "dt"]
  
  required = rep(TRUE, length(params))
  i = grep("Optional", params)
  if(length(i))
     required[i] = FALSE
  names(required) = gsub(" \\(.*", "", params)
  required
}

getParamInfo =
function()
{
    doc = htmlTreeParse("http://www.flickr.com/services/api/", useInternal = TRUE)  
    links = getNodeSet(doc, "//a[@href]")
    pages = sapply(links, xmlGetAttr, "href")
    methods = grep("api/flickr", pages, val = TRUE)

    paramInfo = lapply(paste("http://www.flickr.com", methods, sep = ""), discoverParameters)
    names(paramInfo) = gsub("\\.html", "", gsub("/services/api/", "", methods))
    paramInfo
}

genCode =
function(paramInfo = getParamInfo(), global = TRUE)
{
  FlickrFunctions = mapply(genFunc, names(paramInfo), paramInfo)

  if(global)
     mapply(assign, names(FlickrFunctions), FlickrFunctions, MoreArgs = list(envir = globalenv()))
  
  FlickrFunctions = mapply(switchParams, paramInfo, FlickrFunctions)
  FlickrFunctions
}

dumpCode =
function(functionNames = grep("^flickr\\.", objects(where), value = TRUE),
         file = "flickrCode.R", where = globalenv())
{
   dump(functionNames, file)
}


if(FALSE) {
 data(paramInfo)
 FlickrFunctions = Rflickr:::genCode(paramInfo)
 Rflickr:::dumpCode( file = "R/flickrCode.R")
 save(FlickrFunctions, file = "data/FlickrFunctions.rda")
}
