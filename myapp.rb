# myapp.rb
require 'sinatra'

get '/' do
  'Rocking'
end

get '/music' do
	"<h2>what do you like?</h2>"
end

# post '/upload', file do
# 	UploadFile.now(file)
# end