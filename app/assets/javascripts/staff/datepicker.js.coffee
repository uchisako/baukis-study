ready = ->
  d = new Date()
  dateFormat = 'yy-mm-dd';
  $('.birthday-picker').datepicker(
    minDate: new Date(1900, 1, 1),
    maxDate: new Date(),
    changeMonth: true,
    changeYear: true,
    yearRange: '1900:+00',
    defaultDate: '1970-01-01'
  );
$(document).ready(ready)
$(document).on('turbolinks:load', ready)
