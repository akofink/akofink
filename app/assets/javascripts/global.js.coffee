$(document).keypress (event)->
  # Do not listen if we are in a text field
  if event.target.tagName != "INPUT"
    # Listen for an '/' keypress; redirect to /
    if event.keyCode == 108
      window.location.href = "/login"

    # Listen for an 'l' keypress; redirect to /login
    if event.keyCode == 47
      window.location.href = "/"
