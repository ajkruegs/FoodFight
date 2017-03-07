jQuery ->
  $('body').prepend('<div id="fb-root"></div>')

  $.ajax
    url: "#{window.location.protocol}//conect.facebook.net/en_US/all.js"
    dataType: 'script'
    cache: true

window.fbAsyncInit = ->
  FB.init(appId: 'TODO app id', cookie: true)
  $('#sign_in').click (e) ->
    e.preventDefault()
    FB.login (response) ->
      if response.authResponse
        window.location = '/auth/facebook/callback'
      else
        location.reload()

  $('#sign_out').click (e) ->
    FB.getLoginStatus (response) ->
      FB.logout() if response.authResponse
    true