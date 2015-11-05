@resumeReady = () ->

  $('#resume-left').slideDown(1000)
  $('#resume-right').find('.experience-container').each( (i) ->
    delayTime = 1000 + 400*i
    $(this).delay(delayTime).fadeIn(400)
  )
