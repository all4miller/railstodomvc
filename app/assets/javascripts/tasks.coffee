$(document).on 'ready page:load', ->
  $('#filters a').click ->
    $('#filters a').removeClass('selected').filter(this).addClass('selected')
    $('#todo-list li').show().filter(":not(.#{$(this).attr('data-filter')})").hide()

  $('#toggle-all').click ->
    if $(this).data('state') == 'on'
      $('#todo-list li.completed a:first-child').click()
      $(this).data('state', 'off')
    else
      $('#todo-list li:not(.completed) a:first-child').click()
      $(this).data('state', 'on')



