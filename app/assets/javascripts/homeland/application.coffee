#= require jquery
#= require jquery_ujs
#= require homeland/tether.min
#= require homeland/bootstrap.min
#= require homeland/jquery.timeago
#= require homeland/jquery.easing.1.34e44
#= require homeland/prettyphoto/jquery.prettyPhotoaeb9
#= require homeland/jquery.liveSearchd5f7
#= require homeland/jflickrfeed
#= require homeland/jquery.validate.minfc6b
#= require homeland/custom5152
#= require_self

window.TopicView =
  init: ->
    $('[data-action=reply]').off 'click.homeland'
    $('[data-action=reply]').on 'click.homeland', @replyAction

  replyAction: (e) ->
    target = $(e.currentTarget)
    replyId = target.data('reply-id')
    replyPanel = $('#reply-panel')
    replyPanel.addClass('navbar navbar-fixed-bottom navbar-light')
    replyPanel.show()
    replyPanel.find('textarea').focus()
    replyPanel.find('input[name="reply[reply_to_id]"]').val(replyId)
    return false


window.Homeland =
  init: ->
    $("abbr.timeago").timeago()

    TopicView.init()

$(document).ready ->
  Homeland.init()
