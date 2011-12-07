moment = require 'moment'

module.exports =
  postPath: (post) ->
    date = moment(post.createdAt).format('YYYY/MM/DD')
    "/posts/#{date}/#{post.slug}"

  postDate: (post) ->
    moment(post.createdAt).format('YYYY-MM-DD hh:mm')