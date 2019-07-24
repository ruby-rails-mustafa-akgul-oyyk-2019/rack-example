require 'rack'
require "rack/handler/puma"
 
myapp = Proc.new do |env|
    ['200', {'Content-Type' => 'text/html'}, ['A barebones rack app.']]
end
 
Rack::Handler::Puma.run myapp
