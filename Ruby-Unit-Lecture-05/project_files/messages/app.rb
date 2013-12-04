# app.rb

require 'sinatra'
require 'data_mapper'

DataMapper.setup(:default, ENV['DATABASE_URL'])

get '/' do
  @messages = Message.all
  erb :messages
end

get '/migrate' do
  DataMapper.auto_migrate!
  "Database migrated! All tables reset."
end

post '/' do
  # TODO: Read the incoming message, save it to the database
  
end

class Message
  # TODO: Use this class as a table in the database
  
end

DataMapper.finalize
DataMapper.auto_upgrade!
