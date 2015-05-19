$(document).on 'ready page:load', ->
  $('#filters a').click ->
    console.log this.data('fiter')
