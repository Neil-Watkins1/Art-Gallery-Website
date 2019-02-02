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

get '/manager' do
  @exhibits = Exhibit.all
  erb (:"manager/m_index")
end
