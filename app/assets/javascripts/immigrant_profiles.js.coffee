# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
#jQuery time
current_fs = undefined #fieldsets
next_fs = undefined
previous_fs = undefined
left = undefined #fieldset properties which we will animate
opacity = undefined
scale = undefined
animating = undefined #flag to prevent quick multi-click glitches


$(document).ready ->
  $(".next").click ->
    return false  if animating
    animating = true
    current_fs = $(this).parent()
    next_fs = $(this).parent().next()

    #activate next step on progressbar using the index of next_fs
    $("#progressbar li").eq($("fieldset").index(next_fs)).addClass "active"

    #show the next fieldset
    next_fs.show()

    #hide the current fieldset with style
    current_fs.animate
      opacity: 0
    ,
      step: (now, mx) ->

        #as the opacity of current_fs reduces to 0 - stored in "now"
        #1. scale current_fs down to 80%
        scale = 1 - (1 - now) * 0.2

        #2. bring next_fs from the right(50%)
        left = (now * 50) + "%"

        #3. increase opacity of next_fs to 1 as it moves in
        opacity = 1 - now
        current_fs.css transform: "scale(" + scale + ")"
        next_fs.css
          left: left
          opacity: opacity


      duration: 800
      complete: ->
        current_fs.hide()
        animating = false


      #this comes from the custom easing plugin
      easing: "easeInOutBack"


  $(".previous").click ->
    return false  if animating
    animating = true
    current_fs = $(this).parent()
    previous_fs = $(this).parent().prev()

    #de-activate current step on progressbar
    $("#progressbar li").eq($("fieldset").index(current_fs)).removeClass "active"

    #show the previous fieldset
    previous_fs.show()

    #hide the current fieldset with style
    current_fs.animate
      opacity: 0
    ,
      step: (now, mx) ->

        #as the opacity of current_fs reduces to 0 - stored in "now"
        #1. scale previous_fs from 80% to 100%
        scale = 0.8 + (1 - now) * 0.2

        #2. take current_fs to the right(50%) - from 0%
        left = ((1 - now) * 50) + "%"

        #3. increase opacity of previous_fs to 1 as it moves in
        opacity = 1 - now
        current_fs.css left: left
        previous_fs.css
          transform: "scale(" + scale + ")"
          opacity: opacity


      duration: 800
      complete: ->
        current_fs.hide()
        animating = false


      #this comes from the custom easing plugin
      easing: "easeInOutBack"


  $(".submit").click ->
    false
