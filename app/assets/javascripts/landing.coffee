@landingReady = () ->

  descriptors = ['Passionate Programmer',
                  'Biomedical Engineer',
                  'Neuroscientist',
                  '3D Printer Enthusiast'
                  'Treehugger',
                  'Adjective Afficionado',
                  'Traveler']

  finalDescriptor = "Let's work together!"

  fadeInTime = 300
  delayTime = 600
  fadeOutTime = 300

  cycle = () ->
    $('#callout-'+i).fadeIn fadeInTime
    $('#kyle-describer')
      .html descriptors[i]
      .fadeIn fadeInTime
      .delay delayTime
      .fadeOut fadeOutTime, () ->
        if i < descriptors.length
          cycle()
        else if i == descriptors.length
          $('#callout-7').fadeIn fadeInTime
          $(this).fadeIn(fadeInTime).html finalDescriptor
        else
          $(this).fadeIn(10)
    i++


  i = 0;
  cycle()

  $(document)
    .on('mouseover', '.callout-landing', () ->
      i = descriptors.length + 1
      hoverNumber = $(this).attr('id').slice(-1)
      $('.callout-landing').each( () ->
        $(this).fadeIn(10)
      )
      $('#kyle-describer').html descriptors.concat(finalDescriptor)[hoverNumber]
    )


