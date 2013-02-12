# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  cities = $('#area_city_id').html()
  $('#area_city_id').hide()
  $('#area_country_id').change ->
    country = $('#area_country_id :selected').text()
    escaped_country = country.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(cities).filter("optgroup[label='#{escaped_country}']").html()
    if options
      $('#area_city_id').html(options)
      $('#area_city_id').show()
    else
      $('#area_city_id').empty()
      $('#area_city_id').hide()