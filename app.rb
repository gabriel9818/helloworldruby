require 'sinatra'

set :bind, '0.0.0.0'
set :port, 8080
set :environment, :production

get '/' do
  'Hola Mundo'
end
