require('pry')

require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('models/category')
require_relative('models/artist')
require_relative('models/exhibit')
also_reload( '../models/*' )


get '/' do
  erb( :greet )
end


get '/visitor' do
  @exhibits = Exhibit.all
  @categories = Category.all
  erb (:"visitor/v_index")
end

get '/manager/add_exhibit' do
  @artists = Artist.all
  @categories = Category.all
  erb(:"manager/add_exhibit")
end

get '/manager/new_artist' do
  erb(:"manager/new_artist")
end

get '/manager/new_category' do
  erb(:"manager/new_category")
end

post '/categories' do
  Category.new(params).save_category
  redirect to '/manager'
end


post '/exhibits' do
  Exhibit.new(params).save
  redirect to '/manager'
end

post '/artists' do
  Artist.new(params).save_artist
  redirect to '/manager'
end


get '/manager' do
  @exhibits = Exhibit.all
  @artists = Artist.all
  erb (:"manager/m_index")
end

get '/visitor/:id' do
  @exhibit = Exhibit.find(params['id'])
  erb( :"visitor/details" )
end

get '/visitorf/:id' do
  @exhibits = Exhibit.find_by_artist(params['id'])
  erb( :"visitor/v_filtered_index" )
end

get '/visitortype/:id' do
  @exhibits = Exhibit.find_by_type(params['id'])
  erb( :"visitor/v_type_index" )
end

get '/manager/:id' do
  @artists = Artist.all
  @categories = Category.all
  @exhibit = Exhibit.find(params['id'])
  erb( :"manager/edit" )
end

post '/exhibits/:id/edit' do
  exhibit = Exhibit.new(params)
  exhibit.update
  redirect to "/manager"
end

post '/manager/:id/delete' do
  Exhibit.delete(params['id'])
  redirect to "/manager"
end

post '/manager/:id/artist_delete' do
  Artist.delete(params['id'])
  redirect to "/manager"
end
