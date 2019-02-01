require_relative('../db/sql_runner')

class Artist

attr_reader :id
attr_accessor :name, :lifetime, :nationality

def initialize(options)
  @id = options['id'].to_i if options['id']
  @name = options['name']
  @lifetime = lifetime['lifetime']
  @nationality = nationality['nationality']
end


  
