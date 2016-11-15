# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('#datetimepicker1').datetimepicker()
  return
  
$ ->
  $('input[name="birthdate"]').daterangepicker {
    singleDatePicker: true
    showDropdowns: true
  }, (start, end, label) ->
    years = moment().diff(start, 'years')
    alert 'You are ' + years + ' years old.'
    return
  return
