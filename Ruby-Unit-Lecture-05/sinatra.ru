# config.ru
require 'sinatra'

get "/" do
    "hello"
end

#get "/hello" do
#	"no really, hello"
#end

#general rule: put more specific routes or less specific routes
get '/hello/do_something' do
	"i did a thing"
end

get "/hello/:name" do
	"no really, hello #{params[:name]}"
end



run Sinatra::Application