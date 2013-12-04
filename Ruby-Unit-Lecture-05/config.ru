# config.ru - rackup file
require 'rack'
class MyApp
      def call(env)
	headers = { "Content-Type" => "text/html" }
      	[200, headers, ["Hello world!"]] 
      end
end
run MyApp.new


#rackup config.ru
#rackup config.ru -p 3000

