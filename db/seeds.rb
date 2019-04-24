
require_relative('../models/category')
require_relative('../models/artist')
require_relative('../models/exhibit')

require('pry')

Exhibit.delete_all()
Artist.delete_all()
Category.delete_all()

artist1 = Artist.new({ 'name' => 'Auguste Rodin', 'lifetime' => '1840 - 1917', 'nationality' => 'French'})

artist2 = Artist.new({ 'name' => 'Salvador Dali', 'lifetime' => '1904 - 1989', 'nationality' => 'Spanish'})

artist3 = Artist.new({'name' => 'Sir Alfred Gilbert', 'lifetime' => '1854 - 1934', 'nationality' => 'British'})

artist4 = Artist.new({'name' => 'Pablo Picasso', 'lifetime' => '1881 - 1973', 'nationality' => 'Spanish'})

artist5 = Artist.new({'name' => 'Pierre-Auguste Renoir', 'lifetime' => '1841 - 1919', 'nationality' => 'French'})

artist6 = Artist.new({'name' => 'David Hockney', 'lifetime' => '1937 - current', 'nationality' => 'British'})



artist1.save_artist()
artist2.save_artist()
artist3.save_artist()
artist4.save_artist()
artist5.save_artist()
artist6.save_artist()


category1 = Category.new({'type' => 'Sculpture'})
category2 = Category.new({'type' => 'Surrealism'})
category3 = Category.new({'type' => 'Cubism'})
category4 = Category.new({'type' => 'Impressionist'})
category5 = Category.new({'type' => 'Pop Art'})


category1.save_category()
category2.save_category()
category3.save_category()
category4.save_category()
category5.save_category()

exhibit1 = Exhibit.new({
  'title' => 'The Thinker',
  'exhibit_date' => 1904,
  'url' => '/images/The_Thinker.jpeg',
  'artist_id' => artist1.id,
  'category_id' => category1.id
  })

  exhibit1.save

  exhibit2 = Exhibit.new({
    'title' => 'Christ of St John of the Cross',
    'exhibit_date' => 1951,
    'url' => '/images/Christ_of_St_John.jpeg',
    'artist_id' => artist2.id,
    'category_id' => category2.id
    })

    exhibit2.save

    exhibit3 = Exhibit.new({
      'title' => 'Dream Caused by the Flight of a Bee',
      'exhibit_date' => 1944,
      'url' => '/images/Dream_Bee.jpeg',
      'artist_id' => artist2.id,
      'category_id' => category2.id
      })

      exhibit3.save

      exhibit4 = Exhibit.new({
        'title' => 'Eros',
        'exhibit_date' => 1892,
        'url' => '/images/Eros.jpeg',
        'artist_id' => artist3.id,
        'category_id' => category1.id
        })

        exhibit4.save

        exhibit5 = Exhibit.new({
          'title' => 'The Mask of Camille Claudel',
          'exhibit_date' => 1895,
          'url' => '/images/Mask_of_Camille.jpeg',
          'artist_id' => artist1.id,
          'category_id' => category1.id
          })

          exhibit5.save

          exhibit6 = Exhibit.new({
            'title' => 'The Temptation of St Anthony',
            'exhibit_date' => 1946,
            'url' => '/images/St_Anthony.jpeg',
            'artist_id' => artist2.id,
            'category_id' => category2.id
            })

            exhibit6.save

            exhibit7 = Exhibit.new({
              'title' => 'Factory Horta de Ebro',
              'exhibit_date' => 1909,
              'url' => '/images/Factory.jpeg',
              'artist_id' => artist4.id,
              'category_id' => category3.id
              })

              exhibit7.save

              exhibit8 = Exhibit.new({
                'title' => 'Self Portrait 1910',
                'exhibit_date' => 1910,
                'url' => '/images/Self_portrait.jpeg',
                'artist_id' => artist5.id,
                'category_id' => category4.id
                })

                exhibit8.save

                exhibit9 = Exhibit.new({
                  'title' => 'A Bigger Splash',
                  'exhibit_date' => 1967,
                  'url' => '/images/A_Bigger_Splash.jpeg',
                  'artist_id' => artist6.id,
                  'category_id' => category5.id
                  })

                  exhibit9.save

                  exhibit10 = Exhibit.new({
                    'title' => 'Portrait of an Artist (Pool With Two Figures)',
                    'exhibit_date' => 1972,
                    'url' => '/images/Portrait_of_an_Artist.jpeg',
                    'artist_id' => artist6.id,
                    'category_id' => category5.id
                    })

                    exhibit10.save


                    
                    nil
