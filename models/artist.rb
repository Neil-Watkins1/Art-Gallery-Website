require_relative('../db/sql_runner')

class Artist

  attr_reader :id
  attr_accessor :name, :lifetime, :nationality

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @lifetime = options['lifetime']
    @nationality = options['nationality']
  end

  def save_artist()
    sql= "INSERT INTO artists
    (
      name,
      lifetime,
      nationality
    )
    values
    (
      $1, $2, $3
    )
    RETURNING id"
    values = [@name, @lifetime, @nationality]
    result = SqlRunner.run(sql, values)
    id = result.first["id"]
    @id = id.to_i
  end

  def self.delete_all()
    sql = "DELETE FROM artists"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM artists"
    artist_list = SqlRunner.run(sql)
    artists = map_items(artist_list)
    return artists

  end


def delete()
  sql = "DELETE FROM artists WHERE id = $1"
  values = [@id]
  SqlRunner.run(sql, values)
end

def self.find(id)
  sql = "SELECT * FROM artists WHERE id = $1"
  values = [id]
  result = SqlRunner.run(sql, values).first
  artist = Artist.new(result)
  return artist
end


end
