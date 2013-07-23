`flickr.activity.userComments` <-
function (secret, auth_token, api_key, per_page = character(0), 
    page = character(0), format = character(), ..., .convert = NULL, 
    .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.activity.userComments", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        per_page = per_page, page = page, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.activity.userComments", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.activity.userPhotos` <-
function (secret, auth_token, api_key, timeframe = character(0), 
    per_page = character(0), page = character(0), format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.activity.userPhotos", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        timeframe = timeframe, per_page = per_page, page = page, 
        format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.activity.userPhotos", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.auth.checkToken` <-
function (secret, auth_token, api_key, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.auth.checkToken", secret = secret, 
        auth_token = auth_token, api_key = api_key, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.auth.checkToken", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.auth.getFrob` <-
function (secret, auth_token, api_key, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.auth.getFrob", secret = secret, 
        auth_token = auth_token, api_key = api_key, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.auth.getFrob", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.auth.getFullToken` <-
function (secret, auth_token, api_key, mini_token, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.auth.getFullToken", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        mini_token = mini_token, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.auth.getFullToken", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.auth.getToken` <-
function (secret, auth_token, api_key, frob, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.auth.getToken", secret = secret, 
        auth_token = auth_token, api_key = api_key, frob = frob, 
        format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.auth.getToken", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.blogs.getList` <-
function (secret, auth_token, api_key, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.blogs.getList", secret = secret, 
        auth_token = auth_token, api_key = api_key, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.blogs.getList", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.blogs.postPhoto` <-
function (secret, auth_token, api_key, blog_id, photo_id, title, 
    description, blog_password = character(0), format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.blogs.postPhoto", secret = secret, 
        auth_token = auth_token, api_key = api_key, blog_id = blog_id, 
        photo_id = photo_id, title = title, description = description, 
        blog_password = blog_password, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.blogs.postPhoto", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.contacts.getList` <-
function (secret, auth_token, api_key, filter = character(0), 
    page = character(0), per_page = character(0), format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.contacts.getList", secret = secret, 
        auth_token = auth_token, api_key = api_key, filter = filter, 
        page = page, per_page = per_page, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.contacts.getList", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.contacts.getPublicList` <-
function (secret, auth_token, api_key, user_id, page = character(0), 
    per_page = character(0), format = character(), ..., .convert = NULL, 
    .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.contacts.getPublicList", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        user_id = user_id, page = page, per_page = per_page, 
        format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.contacts.getPublicList", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.favorites.add` <-
function (secret, auth_token, api_key, photo_id, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.favorites.add", secret = secret, 
        auth_token = auth_token, api_key = api_key, photo_id = photo_id, 
        format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.favorites.add", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.favorites.getList` <-
function (secret, auth_token, api_key, user_id = character(0), 
    extras = character(0), per_page = character(0), page = character(0), 
    format = character(), ..., .convert = NULL, .opts = list(...), 
    .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.favorites.getList", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        user_id = user_id, extras = extras, per_page = per_page, 
        page = page, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.favorites.getList", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.favorites.getPublicList` <-
function (secret, auth_token, api_key, user_id, extras = character(0), 
    per_page = character(0), page = character(0), format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.favorites.getPublicList", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        user_id = user_id, extras = extras, per_page = per_page, 
        page = page, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.favorites.getPublicList", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.favorites.remove` <-
function (secret, auth_token, api_key, photo_id, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.favorites.remove", secret = secret, 
        auth_token = auth_token, api_key = api_key, photo_id = photo_id, 
        format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.favorites.remove", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.galleries.addPhoto` <-
function (secret, auth_token, api_key, gallery_id, photo_id, 
            format = character(), ..., .convert = NULL, .opts = list(...), 
            .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.galleries.addPhoto", 
                        secret = secret, auth_token = auth_token, api_key = api_key, 
                        gallery_id = gallery_id, photo_id = photo_id, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
                  .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.galleries.addPhoto", api_key, 
                          secret, .convert = .convert, format = format)
}
`flickr.galleries.create` <-
function (secret, auth_token, api_key, title, description = character(0), 
            primary_photo_id, format = character(), ..., .convert = NULL, 
            .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.galleries.create", secret = secret, 
                        auth_token = auth_token, api_key = api_key, title = title, 
                        description = description, primary_photo_id = primary_photo_id, 
                        format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
                  .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.galleries.create", api_key, 
                          secret, .convert = .convert, format = format)
}
`flickr.galleries.editMeta` <-
function (secret, auth_token, api_key, gallery_id, title, description = character(0), 
            format = character(), ..., .convert = NULL, .opts = list(...), 
            .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.galleries.editMeta", 
                        secret = secret, auth_token = auth_token, api_key = api_key, 
                        gallery_id = gallery_id, title = title, description = description, 
                        format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
                  .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.galleries.editMeta", api_key, 
                          secret, .convert = .convert, format = format)
}
`flickr.galleries.editPhoto` <-
function (secret, auth_token, api_key, gallery_id, photo_id, 
            comment, format = character(), ..., .convert = NULL, .opts = list(...), 
            .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.galleries.editPhoto", 
                        secret = secret, auth_token = auth_token, api_key = api_key, 
                        gallery_id = gallery_id, photo_id = photo_id, comment=
                        comment, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
                  .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.galleries.editPhoto", 
                          api_key, secret, .convert = .convert, format = format)
}

`flickr.galleries.editPhotos` <-
function (secret, auth_token, api_key, gallery_id, primary_photo_id, 
            photo_ids, format = character(), ..., .convert = NULL, .opts = list(...), 
            .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.galleries.editPhotos", 
                        secret = secret, auth_token = auth_token, api_key = api_key, 
                        gallery_id = gallery_id, primary_photo_id = primary_photo_id, 
                        photo_ids = photo_ids, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
                  .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.galleries.editPhotos", 
                          api_key, secret, .convert = .convert, format = format)
}

`flickr.galleries.getInfo` <-
function (secret, auth_token, api_key, gallery_id, format = character(), 
            ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.galleries.getInfo", 
                        secret = secret, auth_token = auth_token, api_key = api_key, 
                        gallery_id = gallery_id, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
                  .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.galleries.getInfo", api_key, 
                          secret, .convert = .convert, format = format)
}
`flickr.galleries.getList` <-
function (secret, auth_token, api_key, user_id = character(0), 
            format = character(), ..., .convert = NULL, .opts = list(...), 
            .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.galleries.getList", 
                        secret = secret, auth_token = auth_token, api_key = api_key, 
                        user_id = user_id, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
                  .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr..getList", api_key, 
                          secret, .convert = .convert, format = format)
}
`flickr.galleries.getPhotos` <-
function (secret, auth_token, api_key, gallery_id, extras = character(0), 
            privacy_filter = character(0), per_page = character(0), page = character(0), 
            media = character(0), format = character(), ..., .convert = NULL, 
            .opts = list(...), .curl = getCurlHandle()) 
{
   args = addSignature(method = "flickr.galleries.getPhotos", 
                       secret = secret, auth_token = auth_token, api_key = api_key, 
                       gallery_id = gallery_id, extras = extras, privacy_filter = privacy_filter, 
                       per_page = per_page, page = page, media = media, format = format)
   ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
                 .opts = .opts, curl = .curl)
   processFlickrResponse(ans, "flickr.galleries.getPhotos", 
                         api_key, secret, .convert = .convert, format = format)
}
`flickr.galleries.getListForPhoto` <-
function (secret, auth_token, api_key, photo_id, extras = character(0), 
            privacy_filter = character(0), per_page = character(0), page = character(0), 
            media = character(0), format = character(), ..., .convert = NULL, 
            .opts = list(...), .curl = getCurlHandle()) 
{
   args = addSignature(method = "flickr.galleries.getListForPhoto", 
                      secret = secret, auth_token = auth_token, api_key = api_key, 
                      photo_id = photo_id, extras = extras, privacy_filter = privacy_filter, 
                      per_page = per_page, page = page, media = media, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
                .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.galleries.getListForPhoto", 
                        api_key, secret, .convert = .convert, format = format)
}
`flickr.groups.browse` <-
function (secret, auth_token, api_key, cat_id = character(0), 
    format = character(), ..., .convert = NULL, .opts = list(...), 
    .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.groups.browse", secret = secret, 
        auth_token = auth_token, api_key = api_key, cat_id = cat_id, 
        format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.groups.browse", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.groups.getInfo` <-
function (secret, auth_token, api_key, group_id, lang = character(0), 
    format = character(), ..., .convert = NULL, .opts = list(...), 
    .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.groups.getInfo", secret = secret, 
        auth_token = auth_token, api_key = api_key, group_id = group_id, 
        lang = lang, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.groups.getInfo", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.groups.pools.add` <-
function (secret, auth_token, api_key, photo_id, group_id, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.groups.pools.add", secret = secret, 
        auth_token = auth_token, api_key = api_key, photo_id = photo_id, 
        group_id = group_id, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.groups.pools.add", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.groups.pools.getContext` <-
function (secret, auth_token, api_key, photo_id, group_id, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.groups.pools.getContext", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        photo_id = photo_id, group_id = group_id, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.groups.pools.getContext", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.groups.pools.getGroups` <-
function (secret, auth_token, api_key, page = character(0), per_page = character(0), 
    format = character(), ..., .convert = NULL, .opts = list(...), 
    .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.groups.pools.getGroups", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        page = page, per_page = per_page, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.groups.pools.getGroups", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.groups.pools.getPhotos` <-
function (secret, auth_token, api_key, group_id, tags = character(0), 
    user_id = character(0), extras = character(0), per_page = character(0), 
    page = character(0), format = character(), ..., .convert = NULL, 
    .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.groups.pools.getPhotos", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        group_id = group_id, tags = tags, user_id = user_id, 
        extras = extras, per_page = per_page, page = page, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.groups.pools.getPhotos", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.groups.pools.remove` <-
function (secret, auth_token, api_key, photo_id, group_id, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.groups.pools.remove", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        photo_id = photo_id, group_id = group_id, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.groups.pools.remove", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.groups.search` <-
function (secret, auth_token, api_key, text, per_page = character(0), 
    page = character(0), format = character(), ..., .convert = NULL, 
    .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.groups.search", secret = secret, 
        auth_token = auth_token, api_key = api_key, text = text, 
        per_page = per_page, page = page, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.groups.search", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.interestingness.getList` <-
function (secret, auth_token, api_key, date = character(0), extras = character(0), 
    per_page = character(0), page = character(0), format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.interestingness.getList", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        date = date, extras = extras, per_page = per_page, page = page, 
        format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.interestingness.getList", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.people.findByEmail` <-
function (secret, auth_token, api_key, find_email, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.people.findByEmail", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        find_email = find_email, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.people.findByEmail", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.people.findByUsername` <-
function (secret, auth_token, api_key, username, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.people.findByUsername", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        username = username, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.people.findByUsername", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.people.getInfo` <-
function (secret, auth_token, api_key, user_id, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.people.getInfo", secret = secret, 
        auth_token = auth_token, api_key = api_key, user_id = user_id, 
        format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.people.getInfo", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.people.getPublicGroups` <-
function (secret, auth_token, api_key, user_id, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.people.getPublicGroups", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        user_id = user_id, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.people.getPublicGroups", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.people.getPublicPhotos` <-
function (secret, auth_token, api_key, user_id, safe_search = character(0), 
    extras = character(0), per_page = character(0), page = character(0), 
    format = character(), ..., .convert = NULL, .opts = list(...), 
    .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.people.getPublicPhotos", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        user_id = user_id, safe_search = safe_search, extras = extras, 
        per_page = per_page, page = page, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.people.getPublicPhotos", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.people.getUploadStatus` <-
function (secret, auth_token, api_key, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.people.getUploadStatus", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.people.getUploadStatus", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.photos.addTags` <-
function (secret, auth_token, api_key, photo_id, tags, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photos.addTags", secret = secret, 
        auth_token = auth_token, api_key = api_key, photo_id = photo_id, 
        tags = tags, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photos.addTags", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.photos.comments.addComment` <-
function (secret, auth_token, api_key, photo_id, comment_text, 
    format = character(), ..., .convert = NULL, .opts = list(...), 
    .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photos.comments.addComment", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        photo_id = photo_id, comment_text = comment_text, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photos.comments.addComment", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.photos.comments.deleteComment` <-
function (secret, auth_token, api_key, comment_id, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photos.comments.deleteComment", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        comment_id = comment_id, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photos.comments.deleteComment", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.photos.comments.editComment` <-
function (secret, auth_token, api_key, comment_id, comment_text, 
    format = character(), ..., .convert = NULL, .opts = list(...), 
    .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photos.comments.editComment", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        comment_id = comment_id, comment_text = comment_text, 
        format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photos.comments.editComment", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.photos.comments.getList` <-
function (secret, auth_token, api_key, photo_id, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photos.comments.getList", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        photo_id = photo_id, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photos.comments.getList", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.photos.delete` <-
function (secret, auth_token, api_key, photo_id, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photos.delete", secret = secret, 
        auth_token = auth_token, api_key = api_key, photo_id = photo_id, 
        format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photos.delete", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.photos.geo.getLocation` <-
function (secret, auth_token, api_key, photo_id, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photos.geo.getLocation", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        photo_id = photo_id, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photos.geo.getLocation", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.photos.geo.getPerms` <-
function (secret, auth_token, api_key, photo_id, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photos.geo.getPerms", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        photo_id = photo_id, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photos.geo.getPerms", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.photos.geo.removeLocation` <-
function (secret, auth_token, api_key, photo_id, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photos.geo.removeLocation", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        photo_id = photo_id, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photos.geo.removeLocation", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.photos.geo.setLocation` <-
function (secret, auth_token, api_key, photo_id, lat, lon, accuracy = character(0), 
    format = character(), ..., .convert = NULL, .opts = list(...), 
    .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photos.geo.setLocation", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        photo_id = photo_id, lat = lat, lon = lon, accuracy = accuracy, 
        format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photos.geo.setLocation", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.photos.geo.setPerms` <-
function (secret, auth_token, api_key, is_public, is_contact, 
    is_friend, is_family, photo_id, format = character(), ..., 
    .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photos.geo.setPerms", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        is_public = is_public, is_contact = is_contact, is_friend = is_friend, 
        is_family = is_family, photo_id = photo_id, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photos.geo.setPerms", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.photos.getAllContexts` <-
function (secret, auth_token, api_key, photo_id, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photos.getAllContexts", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        photo_id = photo_id, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photos.getAllContexts", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.photos.getContactsPhotos` <-
function (secret, auth_token, api_key, count = character(0), 
    just_friends = character(0), single_photo = character(0), 
    include_self = character(0), extras = character(0), format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photos.getContactsPhotos", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        count = count, just_friends = just_friends, single_photo = single_photo, 
        include_self = include_self, extras = extras, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photos.getContactsPhotos", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.photos.getContactsPublicPhotos` <-
function (secret, auth_token, api_key, user_id, count = character(0), 
    just_friends = character(0), single_photo = character(0), 
    include_self = character(0), extras = character(0), format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photos.getContactsPublicPhotos", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        user_id = user_id, count = count, just_friends = just_friends, 
        single_photo = single_photo, include_self = include_self, 
        extras = extras, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photos.getContactsPublicPhotos", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.photos.getContext` <-
function (secret, auth_token, api_key, photo_id, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photos.getContext", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        photo_id = photo_id, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photos.getContext", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.photos.getCounts` <-
function (secret, auth_token, api_key, dates = character(0), 
    taken_dates = character(0), format = character(), ..., .convert = NULL, 
    .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photos.getCounts", secret = secret, 
        auth_token = auth_token, api_key = api_key, dates = dates, 
        taken_dates = taken_dates, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photos.getCounts", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.photos.getExif` <-
function (secret, auth_token, api_key, photo_id, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photos.getExif", secret = secret, 
        auth_token = auth_token, api_key = api_key, photo_id = photo_id, 
        format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photos.getExif", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.photos.getFavorites` <-
function (secret, auth_token, api_key, photo_id, page = character(0), 
    per_page = character(0), format = character(), ..., .convert = NULL, 
    .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photos.getFavorites", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        photo_id = photo_id, page = page, per_page = per_page, 
        format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photos.getFavorites", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.photos.getInfo` <-
function (secret, auth_token, api_key, photo_id, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photos.getInfo", secret = secret, 
        auth_token = auth_token, api_key = api_key, photo_id = photo_id, 
        format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photos.getInfo", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.photos.getNotInSet` <-
function (secret, auth_token, api_key, min_upload_date = character(0), 
    max_upload_date = character(0), min_taken_date = character(0), 
    max_taken_date = character(0), privacy_filter = character(0), 
    media = character(0), extras = character(0), per_page = character(0), 
    page = character(0), format = character(), ..., .convert = NULL, 
    .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photos.getNotInSet", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        min_upload_date = min_upload_date, max_upload_date = max_upload_date, 
        min_taken_date = min_taken_date, max_taken_date = max_taken_date, 
        privacy_filter = privacy_filter, media = media, extras = extras, 
        per_page = per_page, page = page, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photos.getNotInSet", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.photos.getPerms` <-
function (secret, auth_token, api_key, photo_id, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photos.getPerms", secret = secret, 
        auth_token = auth_token, api_key = api_key, photo_id = photo_id, 
        format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photos.getPerms", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.photos.getRecent` <-
function (secret, auth_token, api_key, extras = character(0), 
    per_page = character(0), page = character(0), format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photos.getRecent", secret = secret, 
        auth_token = auth_token, api_key = api_key, extras = extras, 
        per_page = per_page, page = page, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photos.getRecent", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.photos.getSizes` <-
function (secret, auth_token, api_key, photo_id, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photos.getSizes", secret = secret, 
        auth_token = auth_token, api_key = api_key, photo_id = photo_id, 
        format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photos.getSizes", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.photos.getUntagged` <-
function (secret, auth_token, api_key, min_upload_date = character(0), 
    max_upload_date = character(0), min_taken_date = character(0), 
    max_taken_date = character(0), privacy_filter = character(0), 
    media = character(0), extras = character(0), per_page = character(0), 
    page = character(0), format = character(), ..., .convert = NULL, 
    .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photos.getUntagged", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        min_upload_date = min_upload_date, max_upload_date = max_upload_date, 
        min_taken_date = min_taken_date, max_taken_date = max_taken_date, 
        privacy_filter = privacy_filter, media = media, extras = extras, 
        per_page = per_page, page = page, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photos.getUntagged", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.photos.getWithGeoData` <-
function (secret, auth_token, api_key, min_upload_date = character(0), 
    max_upload_date = character(0), min_taken_date = character(0), 
    max_taken_date = character(0), privacy_filter = character(0), 
    sort = character(0), media = character(0), extras = character(0), 
    per_page = character(0), page = character(0), format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photos.getWithGeoData", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        min_upload_date = min_upload_date, max_upload_date = max_upload_date, 
        min_taken_date = min_taken_date, max_taken_date = max_taken_date, 
        privacy_filter = privacy_filter, sort = sort, media = media, 
        extras = extras, per_page = per_page, page = page, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photos.getWithGeoData", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.photos.getWithoutGeoData` <-
function (secret, auth_token, api_key, min_upload_date = character(0), 
    max_upload_date = character(0), min_taken_date = character(0), 
    max_taken_date = character(0), privacy_filter = character(0), 
    sort = character(0), media = character(0), extras = character(0), 
    per_page = character(0), page = character(0), format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photos.getWithoutGeoData", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        min_upload_date = min_upload_date, max_upload_date = max_upload_date, 
        min_taken_date = min_taken_date, max_taken_date = max_taken_date, 
        privacy_filter = privacy_filter, sort = sort, media = media, 
        extras = extras, per_page = per_page, page = page, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photos.getWithoutGeoData", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.photos.licenses.getInfo` <-
function (secret, auth_token, api_key, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photos.licenses.getInfo", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photos.licenses.getInfo", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.photos.licenses.setLicense` <-
function (secret, auth_token, api_key, photo_id, license_id, 
    format = character(), ..., .convert = NULL, .opts = list(...), 
    .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photos.licenses.setLicense", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        photo_id = photo_id, license_id = license_id, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photos.licenses.setLicense", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.photos.notes.add` <-
function (secret, auth_token, api_key, photo_id, note_x, note_y, 
    note_w, note_h, note_text, format = character(), ..., .convert = NULL, 
    .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photos.notes.add", secret = secret, 
        auth_token = auth_token, api_key = api_key, photo_id = photo_id, 
        note_x = note_x, note_y = note_y, note_w = note_w, note_h = note_h, 
        note_text = note_text, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photos.notes.add", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.photos.notes.delete` <-
function (secret, auth_token, api_key, note_id, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photos.notes.delete", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        note_id = note_id, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photos.notes.delete", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.photos.notes.edit` <-
function (secret, auth_token, api_key, note_id, note_x, note_y, 
    note_w, note_h, note_text, format = character(), ..., .convert = NULL, 
    .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photos.notes.edit", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        note_id = note_id, note_x = note_x, note_y = note_y, 
        note_w = note_w, note_h = note_h, note_text = note_text, 
        format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photos.notes.edit", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.photos.recentlyUpdated` <-
function (secret, auth_token, api_key, min_date, extras = character(0), 
    per_page = character(0), page = character(0), format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photos.recentlyUpdated", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        min_date = min_date, extras = extras, per_page = per_page, 
        page = page, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photos.recentlyUpdated", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.photos.removeTag` <-
function (secret, auth_token, api_key, tag_id, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photos.removeTag", secret = secret, 
        auth_token = auth_token, api_key = api_key, tag_id = tag_id, 
        format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photos.removeTag", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.photos.search` <-
function (secret, auth_token, api_key, user_id = character(0), 
    tags = character(0), tag_mode = character(0), text = character(0), 
    min_upload_date = character(0), max_upload_date = character(0), 
    min_taken_date = character(0), max_taken_date = character(0), 
    license = character(0), sort = character(0), privacy_filter = character(0), 
    bbox = character(0), accuracy = character(0), safe_search = character(0), 
    content_type = character(0), machine_tags = character(0), 
    machine_tag_mode, group_id = character(0), contacts = character(0), 
    woe_id = character(0), place_id = character(0), media = character(0), 
    has_geo = character(0), lat = character(0), lon = character(0), 
    radius = character(0), radius_units = character(0), extras = character(0), 
    per_page = character(0), page = character(0), format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photos.search", secret = secret, 
        auth_token = auth_token, api_key = api_key, user_id = user_id, 
        tags = tags, tag_mode = tag_mode, text = text, min_upload_date = min_upload_date, 
        max_upload_date = max_upload_date, min_taken_date = min_taken_date, 
        max_taken_date = max_taken_date, license = license, sort = sort, 
        privacy_filter = privacy_filter, bbox = bbox, accuracy = accuracy, 
        safe_search = safe_search, content_type = content_type, 
        machine_tags = machine_tags, machine_tag_mode = machine_tag_mode, 
        group_id = group_id, contacts = contacts, woe_id = woe_id, 
        place_id = place_id, media = media, has_geo = has_geo, 
        lat = lat, lon = lon, radius = radius, radius_units = radius_units, 
        extras = extras, per_page = per_page, page = page, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photos.search", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.photos.setContentType` <-
function (secret, auth_token, api_key, photo_id, content_type, 
    format = character(), ..., .convert = NULL, .opts = list(...), 
    .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photos.setContentType", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        photo_id = photo_id, content_type = content_type, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photos.setContentType", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.photos.setDates` <-
function (secret, auth_token, api_key, photo_id, date_posted = character(0), 
    date_taken = character(0), date_taken_granularity = character(0), 
    format = character(), ..., .convert = NULL, .opts = list(...), 
    .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photos.setDates", secret = secret, 
        auth_token = auth_token, api_key = api_key, photo_id = photo_id, 
        date_posted = date_posted, date_taken = date_taken, date_taken_granularity = date_taken_granularity, 
        format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photos.setDates", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.photos.setMeta` <-
function (secret, auth_token, api_key, photo_id, title, description, 
    format = character(), ..., .convert = NULL, .opts = list(...), 
    .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photos.setMeta", secret = secret, 
        auth_token = auth_token, api_key = api_key, photo_id = photo_id, 
        title = title, description = description, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photos.setMeta", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.photos.setPerms` <-
function (secret, auth_token, api_key, photo_id, is_public, is_friend, 
    is_family, perm_comment, perm_addmeta, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photos.setPerms", secret = secret, 
        auth_token = auth_token, api_key = api_key, photo_id = photo_id, 
        is_public = is_public, is_friend = is_friend, is_family = is_family, 
        perm_comment = perm_comment, perm_addmeta = perm_addmeta, 
        format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photos.setPerms", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.photos.setSafetyLevel` <-
function (secret, auth_token, api_key, photo_id, safety_level = character(0), 
    hidden = character(0), format = character(), ..., .convert = NULL, 
    .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photos.setSafetyLevel", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        photo_id = photo_id, safety_level = safety_level, hidden = hidden, 
        format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photos.setSafetyLevel", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.photos.setTags` <-
function (secret, auth_token, api_key, photo_id, tags, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photos.setTags", secret = secret, 
        auth_token = auth_token, api_key = api_key, photo_id = photo_id, 
        tags = tags, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photos.setTags", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.photos.transform.rotate` <-
function (secret, auth_token, api_key, photo_id, degrees, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photos.transform.rotate", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        photo_id = photo_id, degrees = degrees, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photos.transform.rotate", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.photos.upload.checkTickets` <-
function (secret, auth_token, api_key, tickets, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photos.upload.checkTickets", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        tickets = tickets, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photos.upload.checkTickets", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.photosets.addPhoto` <-
function (secret, auth_token, api_key, photoset_id, photo_id, 
    format = character(), ..., .convert = NULL, .opts = list(...), 
    .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photosets.addPhoto", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        photoset_id = photoset_id, photo_id = photo_id, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photosets.addPhoto", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.photosets.comments.addComment` <-
function (secret, auth_token, api_key, photoset_id, comment_text, 
    format = character(), ..., .convert = NULL, .opts = list(...), 
    .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photosets.comments.addComment", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        photoset_id = photoset_id, comment_text = comment_text, 
        format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photosets.comments.addComment", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.photosets.comments.deleteComment` <-
function (secret, auth_token, api_key, comment_id, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photosets.comments.deleteComment", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        comment_id = comment_id, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photosets.comments.deleteComment", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.photosets.comments.editComment` <-
function (secret, auth_token, api_key, comment_id, comment_text, 
    format = character(), ..., .convert = NULL, .opts = list(...), 
    .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photosets.comments.editComment", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        comment_id = comment_id, comment_text = comment_text, 
        format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photosets.comments.editComment", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.photosets.comments.getList` <-
function (secret, auth_token, api_key, photoset_id, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photosets.comments.getList", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        photoset_id = photoset_id, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photosets.comments.getList", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.photosets.create` <-
function (secret, auth_token, api_key, title, description = character(0), 
    primary_photo_id, format = character(), ..., .convert = NULL, 
    .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photosets.create", secret = secret, 
        auth_token = auth_token, api_key = api_key, title = title, 
        description = description, primary_photo_id = primary_photo_id, 
        format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photosets.create", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.photosets.delete` <-
function (secret, auth_token, api_key, photoset_id, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photosets.delete", secret = secret, 
        auth_token = auth_token, api_key = api_key, photoset_id = photoset_id, 
        format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photosets.delete", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.photosets.editMeta` <-
function (secret, auth_token, api_key, photoset_id, title, description = character(0), 
    format = character(), ..., .convert = NULL, .opts = list(...), 
    .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photosets.editMeta", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        photoset_id = photoset_id, title = title, description = description, 
        format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photosets.editMeta", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.photosets.editPhotos` <-
function (secret, auth_token, api_key, photoset_id, primary_photo_id, 
    photo_ids, format = character(), ..., .convert = NULL, .opts = list(...), 
    .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photosets.editPhotos", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        photoset_id = photoset_id, primary_photo_id = primary_photo_id, 
        photo_ids = photo_ids, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photosets.editPhotos", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.photosets.getContext` <-
function (secret, auth_token, api_key, photo_id, photoset_id, 
    format = character(), ..., .convert = NULL, .opts = list(...), 
    .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photosets.getContext", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        photo_id = photo_id, photoset_id = photoset_id, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photosets.getContext", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.photosets.getInfo` <-
function (secret, auth_token, api_key, photoset_id, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photosets.getInfo", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        photoset_id = photoset_id, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photosets.getInfo", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.photosets.getList` <-
function (secret, auth_token, api_key, user_id = character(0), 
    format = character(), ..., .convert = NULL, .opts = list(...), 
    .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photosets.getList", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        user_id = user_id, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photosets.getList", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.photosets.getPhotos` <-
function (secret, auth_token, api_key, photoset_id, extras = character(0), 
    privacy_filter = character(0), per_page = character(0), page = character(0), 
    media = character(0), format = character(), ..., .convert = NULL, 
    .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photosets.getPhotos", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        photoset_id = photoset_id, extras = extras, privacy_filter = privacy_filter, 
        per_page = per_page, page = page, media = media, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photosets.getPhotos", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.photosets.orderSets` <-
function (secret, auth_token, api_key, photoset_ids, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photosets.orderSets", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        photoset_ids = photoset_ids, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photosets.orderSets", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.photosets.removePhoto` <-
function (secret, auth_token, api_key, photoset_id, photo_id, 
    format = character(), ..., .convert = NULL, .opts = list(...), 
    .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.photosets.removePhoto", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        photoset_id = photoset_id, photo_id = photo_id, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.photosets.removePhoto", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.places.find` <-
function (secret, auth_token, api_key, query, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.places.find", secret = secret, 
        auth_token = auth_token, api_key = api_key, query = query, 
        format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.places.find", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.places.findByLatLon` <-
function (secret, auth_token, api_key, lat, lon, accuracy = character(0), 
    format = character(), ..., .convert = NULL, .opts = list(...), 
    .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.places.findByLatLon", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        lat = lat, lon = lon, accuracy = accuracy, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.places.findByLatLon", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.places.placesForUser` <-
function (secret, auth_token, api_key, place_type, woe_id = character(0), 
    place_id = character(0), threshold = character(0), format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.places.placesForUser", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        place_type = place_type, woe_id = woe_id, place_id = place_id, 
        threshold = threshold, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.places.placesForUser", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.places.resolvePlaceId` <-
function (secret, auth_token, api_key, place_id, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.places.resolvePlaceId", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        place_id = place_id, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.places.resolvePlaceId", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.places.resolvePlaceURL` <-
function (secret, auth_token, api_key, url, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.places.resolvePlaceURL", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        url = url, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.places.resolvePlaceURL", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.prefs.getContentType` <-
function (secret, auth_token, api_key, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.prefs.getContentType", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.prefs.getContentType", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.prefs.getGeoPerms` <-
function (secret, auth_token, api_key, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.prefs.getGeoPerms", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.prefs.getGeoPerms", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.prefs.getHidden` <-
function (secret, auth_token, api_key, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.prefs.getHidden", secret = secret, 
        auth_token = auth_token, api_key = api_key, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.prefs.getHidden", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.prefs.getPrivacy` <-
function (secret, auth_token, api_key, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.prefs.getPrivacy", secret = secret, 
        auth_token = auth_token, api_key = api_key, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.prefs.getPrivacy", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.prefs.getSafetyLevel` <-
function (secret, auth_token, api_key, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.prefs.getSafetyLevel", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.prefs.getSafetyLevel", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.reflection.getMethodInfo` <-
function (secret, auth_token, api_key, method_name, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.reflection.getMethodInfo", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        method_name = method_name, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.reflection.getMethodInfo", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.reflection.getMethods` <-
function (secret, auth_token, api_key, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.reflection.getMethods", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.reflection.getMethods", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.tags.getClusters` <-
function (secret, auth_token, api_key, tag, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.tags.getClusters", secret = secret, 
        auth_token = auth_token, api_key = api_key, tag = tag, 
        format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.tags.getClusters", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.tags.getHotList` <-
function (secret, auth_token, api_key, period = character(0), 
    count = character(0), format = character(), ..., .convert = NULL, 
    .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.tags.getHotList", secret = secret, 
        auth_token = auth_token, api_key = api_key, period = period, 
        count = count, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.tags.getHotList", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.tags.getListPhoto` <-
function (secret, auth_token, api_key, photo_id, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.tags.getListPhoto", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        photo_id = photo_id, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.tags.getListPhoto", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.tags.getListUser` <-
function (secret, auth_token, api_key, user_id = character(0), 
    format = character(), ..., .convert = NULL, .opts = list(...), 
    .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.tags.getListUser", secret = secret, 
        auth_token = auth_token, api_key = api_key, user_id = user_id, 
        format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.tags.getListUser", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.tags.getListUserPopular` <-
function (secret, auth_token, api_key, user_id = character(0), 
    count = character(0), format = character(), ..., .convert = NULL, 
    .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.tags.getListUserPopular", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        user_id = user_id, count = count, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.tags.getListUserPopular", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.tags.getListUserRaw` <-
function (secret, auth_token, api_key, tag = character(0), format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.tags.getListUserRaw", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        tag = tag, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.tags.getListUserRaw", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.tags.getRelated` <-
function (secret, auth_token, api_key, tag, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.tags.getRelated", secret = secret, 
        auth_token = auth_token, api_key = api_key, tag = tag, 
        format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.tags.getRelated", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.test.echo` <-
function (secret, auth_token, api_key, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.test.echo", secret = secret, 
        auth_token = auth_token, api_key = api_key, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.test.echo", api_key, secret, 
        .convert = .convert, format = format)
}
`flickr.test.login` <-
function (secret, auth_token, api_key, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.test.login", secret = secret, 
        auth_token = auth_token, api_key = api_key, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.test.login", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.test.null` <-
function (secret, auth_token, api_key, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.test.null", secret = secret, 
        auth_token = auth_token, api_key = api_key, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.test.null", api_key, secret, 
        .convert = .convert, format = format)
}
`flickr.urls.getGroup` <-
function (secret, auth_token, api_key, group_id, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.urls.getGroup", secret = secret, 
        auth_token = auth_token, api_key = api_key, group_id = group_id, 
        format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.urls.getGroup", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.urls.getUserPhotos` <-
function (secret, auth_token, api_key, user_id = character(0), 
    format = character(), ..., .convert = NULL, .opts = list(...), 
    .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.urls.getUserPhotos", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        user_id = user_id, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.urls.getUserPhotos", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.urls.getUserProfile` <-
function (secret, auth_token, api_key, user_id = character(0), 
    format = character(), ..., .convert = NULL, .opts = list(...), 
    .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.urls.getUserProfile", 
        secret = secret, auth_token = auth_token, api_key = api_key, 
        user_id = user_id, format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.urls.getUserProfile", 
        api_key, secret, .convert = .convert, format = format)
}
`flickr.urls.lookupGroup` <-
function (secret, auth_token, api_key, url, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.urls.lookupGroup", secret = secret, 
        auth_token = auth_token, api_key = api_key, url = url, 
        format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.urls.lookupGroup", api_key, 
        secret, .convert = .convert, format = format)
}
`flickr.urls.lookupUser` <-
function (secret, auth_token, api_key, url, format = character(), 
    ..., .convert = NULL, .opts = list(...), .curl = getCurlHandle()) 
{
    args = addSignature(method = "flickr.urls.lookupUser", secret = secret, 
        auth_token = auth_token, api_key = api_key, url = url, 
        format = format)
    ans = getForm("http://api.flickr.com/services/rest/", .params = args, 
        .opts = .opts, curl = .curl)
    processFlickrResponse(ans, "flickr.urls.lookupUser", api_key, 
        secret, .convert = .convert, format = format)
}
