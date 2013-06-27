jQuery ->
  cities = $('#user_city_id').html()
  areas = $('#user_area_id').html()

  $('#user_city_id').hide()
  $('#user_area_id').hide()
  $('#user_country_id').change ->
    $('#user_area_id').hide()
    country = $('#user_country_id :selected').text()
    escaped_country = country.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(cities).filter("optgroup[label='#{escaped_country}']").html()
    if options
      $('#user_city_id').html(options).prepend($('<option value="">Выберите город</option>'))
      $('#user_city_id').show()
    else
      $('#user_city_id').empty()
      $('#user_city_id').hide()

  $('#user_city_id').change ->
    city = $('#user_city_id :selected').text()
    escaped_city = city.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(areas).filter("optgroup[label='#{escaped_city}']").html()
    if options
      $('#user_area_id').html(options).prepend($('<option value="">Выберите район</option>'))
      $('#user_area_id').show()
    else
      $('#user_area_id').empty()
      $('#user_area_id').hide()