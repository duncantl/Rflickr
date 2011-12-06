library(Rflickr)
api_key = "a6d0c4014a54c2c69ca61db285f974ab"
secret = "d51bce6ba5fd8b3b"

tok = authenticate(api_key, secret)
flickr.tags.getHotList(secret, tok, api_key)

s = flickrSession(secret, authenticate(api_key, secret), api_key)
s$getHotList()


now = Sys.time()
dates = paste(as.integer(c(now  - 21*60*60*24, now)), collapse = ",")
s$getCounts(dates)



s$getHotList(verbose = TRUE, format = 'json')
s$getHotList(verbose = TRUE, .convert = NA)
s$getHotList(verbose = TRUE, .convert = xmlRoot)
