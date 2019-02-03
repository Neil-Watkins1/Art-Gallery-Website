require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('models/artist')
require_relative('models/exhibit')
also_reload( '../models/*' )


get '/' do
  erb( :greet )
end

get '/visitor' do
  @exhibits = Exhibit.all
  erb (:"visitor/v_index")
end

get '/manager/add_exhibit' do
  erb(:"manager/add_exhibit")
end

get '/manager' do
  @exhibits = Exhibit.all
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

get '/manager/:id' do
  @exhibit = Exhibit.find(params['id'])
  erb( :"manager/edit" )
end

# get '/manager/add_exhibit' do
#   erb(:"manager/add_exhibit")
# end
