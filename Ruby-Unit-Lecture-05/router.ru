use Rack::CommonLogger
use Rack::ShowExceptions
use Rack::Lint
use Rack::Static, :urls => ["/static"]

class Router

  def initialize(path='routes.yaml')
    @routes = {"/" => "default", "/foo" => "foo"}
  end

  def call(env)

    # Lookup path in routes hash.
    path = env['PATH_INFO']
    path = '/' unless @routes.has_key? path

    class_name = @routes[path].capitalize

    Kernel.const_get(class_name).call env

  end
end

class Foo
  def self.call(env)
    [200, {'Content-Type' => 'text/plain'}, ['foo']]
  end
end

class Default
  def self.call(env)
    html = 'Hi There'
    [200, {'Content-Type' => 'text/html'}, [html]]
  end
end

run Router.new
