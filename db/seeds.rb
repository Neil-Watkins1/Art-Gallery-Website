

require_relative('../models/artist')
require_relative('../models/exhibit')

artist1 = Artist.new({

  'name' => 'Auguste Rodin',
  'lifetime' => '1840 - 1917',
  'nationality' => 'French'
  })


artist1.save

exhibit1 = Exhibit.new({
'title' => 'The Thinker',
'exhibit_type' => 'Sculpture',
'exhibit_date' => 1904,
'url' => 'url',
'artist_id' => artist1.id
})
exhibit1.save
