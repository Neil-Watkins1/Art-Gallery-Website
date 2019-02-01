

require_relative('../models/artist')
require_relative('../models/exhibit')

require('pry')

Exhibit.delete_all()
Artist.delete_all()


artist1 = Artist.new({ 'name' => 'Auguste Rodin', 'lifetime' => '1840 - 1917', 'nationality' => 'French'})

artist1.save_artist()

artist2 = Artist.new({ 'name' => 'Salvador Dali', 'lifetime' => '1904 - 1989', 'nationality' => 'Spanish'})



artist1.save_artist()
artist2.save_artist()






  exhibit1 = Exhibit.new({
  'title' => 'The Thinker',
  'exhibit_type' => 'Sculpture',
  'exhibit_date' => 1904,
  'url' => 'url',
  'artist_id' => artist1.id
  })

  exhibit1.save

  exhibit2 = Exhibit.new({
  'title' => 'The Beano',
  'exhibit_type' => 'Literature',
  'exhibit_date' => 1904,
  'url' => 'url',
  'artist_id' => artist2.id
  })

  exhibit2.save

  binding.pry
  nil
