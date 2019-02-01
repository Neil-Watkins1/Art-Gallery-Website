require_relative('../db/sql_runner')
require_relative('./artist')

class Exhibit

  attr_accessor :title, :exhibit_type, :exhibit_date, :url, :artist_id
  attr_reader :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @exhibit_type = options['exhibit_type']
    @exhibit_date = options['exhibit_date']
    @url = options['url']
    @artist_id = options['artist_id'].to_i

  end

  def save()
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

  def self.delete_all()
    sql = "DELETE FROM exhibits"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM exhibits"
    exhibit_list = SqlRunner.run(sql)
    exhibits = map_items(exhibit_list)
    return exhibits
    
  end
end
