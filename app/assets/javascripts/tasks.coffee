$(document).on 'ready page:load', ->
  $('#filters a').click ->
    $('#filters a').removeClass('selected').filter(this).addClass('selected')
    $('#todo-list li').show().filter(":not(.#{$(this).attr('data-filter')})").hide()

