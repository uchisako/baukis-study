ready = ->
  d = new Date()
  dateFormat = 'yy-mm-dd';
  $('.datepicker').datepicker(
    dateFormat: dateFormat,
    minDate: new Date(2000, 1, 1),
    maxDate: new Date(d.getFullYear() + 1, d.getMonth(), d.getDate() - 1)
  );
$(document).ready(ready)
$(document).on('turbolinks:load', ready)
