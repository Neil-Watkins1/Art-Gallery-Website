
require_relative('../db/sql_runner')

class Category

  attr_reader :id
  attr_accessor :type

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @type = options['type']

  end

  def save_category()
    sql= "INSERT INTO categories (type) VALUES ($1) RETURNING id"
    values = [@type]
    result = SqlRunner.run(sql, values)
    id = result.first["id"]
    @id = id.to_i
  end

  def self.delete_all()
    sql = "DELETE FROM categories"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM categories"
    category_list = SqlRunner.run(sql)
    categories = map_items(category_list)
    return categories
  end


  def self.map_items(category_list)
    return category_list.map { |category| Category.new(category) }
  end


  def self.delete(id)
    sql = "DELETE FROM categories WHERE id = $1"
    values = [id]
    SqlRunner.run(sql, values)
  end


  def self.find(id)
    sql = "SELECT * FROM categories WHERE id = $1"
    values = [id]
    category = SqlRunner.run(sql, values).first
    return Category.new(category)

  end


end
