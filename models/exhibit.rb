require_relative('../db/sql_runner')

class Exhibits

  attr_accessor :
  attr_reader :

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @exhibit_type = options['exhibit_type']
    @exhibit_date = options['exhibit_date']
    @url = options['url']
    @artist_id = options['artist_id'].to_i

  end

  def add_exhibit()
    sql= "INSERT INTO exhibits
    (
      title,
      exhibit_type,
      exhibit_date,
      url,
      artist_id
    )
    values
    (
      $1, $2, $3, $4, $5
    )
    RETURNING id"
    values = [@title, @exhibit_type, @exhibit_date, @url, @artist_id]
    result = SqlRunner.run(sql, values)
    id = result.first['id']
    @id = id
  end
end
