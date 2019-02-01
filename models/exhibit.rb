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

  def delete()
    sql = "DELETE FROM exhibits WHERE id = $1"
    values = [@id]
    sql_runner.run(sql, values)
  end

  def update()
    sql = "UPDATE exhibits
    SET
    (
      title,
      exhibit_type,
      exhibit_date,
      url,
      artist_id
      ) =
      (
        $1, $2, $3, $4, $5
      )
      WHERE id = $6"
      values = [@title, @exhibit_type, @exhibit_date, @url, @artist_id, @id]
      SqlRunner.run(sql, values)
    end

    def self.find(id)
      sql = "SELECT * FROM exhibits WHERE id = $1"
      values = [id]
      result = SqlRunner.run(sql, values).first
      exhibit = Exhibit.new(result)
      return exhibit
    end

    def self.find_by_artist(id)
      sql = "SELECT * FROM exhibits WHERE artist_id = $1"
      values = [id]
      result = SqlRunner.run(sql, values).first
      exhibit = Exhibit.new(result)
      return exhibit
    end




  end
