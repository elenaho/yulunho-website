$(document).ready ->

  # opens lightboxes for images
  $(".gallery a").click (e) ->
    e.preventDefault()
    $("figure.lb img").attr "src", $(this).find("img").attr("src")
    $("figure.lb").addClass "open"

  # closes lightboxes for images
  $("figure.lb .close").click (e) ->
    e.preventDefault()
    $("figure.lb").removeClass "open"

  #  burger and menu
  $(".burger").click  (e) ->
    e.preventDefault()
    $(".burger").toggleClass "ex"
    $("nav.main").toggleClass "open"


  # transitions to next slide on homepage
  home_transition = ->
    _maxSlide = $(".home_slide div").length-1
    _current = $(".home_slide div.visible").index()
    _current++
    if(_current>_maxSlide)
      _current = 0
    $(".home_slide div").removeClass "visible"
    $(".home_slide div").eq(_current).addClass "visible"

  # home carousel
  setInterval ->
    home_transition()
  , 3500
