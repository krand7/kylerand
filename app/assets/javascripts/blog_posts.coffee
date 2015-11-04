@blogPostsReady = () ->

  $(document)
    .on('click', "[data-object~='switch-background']", () ->
      console.log 'background switching'
      newCreativeClass = 'creative-'+ (Math.floor(Math.random() * 11) + 1)
      $('body').addClass newCreativeClass
      allCreativeClasses = ['creative-1', 'creative-2', 'creative-3', 'creative-4', 'creative-5', 'creative-6', 'creative-7', 'creative-8', 'creative-9', 'creative-10', 'creative-11']
      allCreativeClasses.splice(allCreativeClasses.indexOf(newCreativeClass), 1)
      $('body').removeClass allCreativeClasses.join(' ')
    )
