

require_relative('../models/artist')
require_relative('../models/exhibit')

require('pry')

Exhibit.delete_all()
Artist.delete_all()


artist1 = Artist.new({ 'name' => 'Auguste Rodin', 'lifetime' => '1840 - 1917', 'nationality' => 'French'})

artist1.save_artist()

artist2 = Artist.new({ 'name' => 'Salvador Dali', 'lifetime' => '1904 - 1989', 'nationality' => 'Spanish'})

artist3 = Artist.new({'name' => 'Sir Alfred Gilbert', 'lifetime' => '1854 - 1934', 'nationality' => 'British'})



artist1.save_artist()
artist2.save_artist()
artist3.save_artist()





  exhibit1 = Exhibit.new({
  'title' => 'The Thinker',
  'exhibit_type' => 'Sculpture',
  'exhibit_date' => 1904,
  'url' => '/images/The_Thinker.jpeg',
  'artist_id' => artist1.id
  })

  exhibit1.save

  exhibit2 = Exhibit.new({
  'title' => 'Christ of St John of the Cross',
  'exhibit_type' => 'Surrealism',
  'exhibit_date' => 1951,
  'url' => '/images/Christ_of_St_John.jpeg',
  'artist_id' => artist2.id
  })

  exhibit2.save

  exhibit3 = Exhibit.new({
  'title' => 'Dream Caused by the Flight of a Bee',
  'exhibit_type' => 'Surrealism',
  'exhibit_date' => 1944,
  'url' => '/images/Dream_Bee.jpeg',
  'artist_id' => artist2.id
  })

  exhibit3.save

  exhibit4 = Exhibit.new({
  'title' => 'Eros',
  'exhibit_type' => 'Sculpture',
  'exhibit_date' => 1892,
  'url' => '/images/Eros.jpeg',
  'artist_id' => artist3.id
  })

  exhibit4.save

  exhibit5 = Exhibit.new({
  'title' => 'The Mask of Camille Claudel',
  'exhibit_type' => 'Sculpture',
  'exhibit_date' => 1895,
  'url' => '/images/Mask_of_Camille.jpeg',
  'artist_id' => artist1.id
  })

  exhibit5.save

  binding.pry
  nil
