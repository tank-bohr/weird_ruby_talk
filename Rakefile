require 'webrick'

require 'slim'
require 'redcarpet'

task default: %w[slim server]

task :slim do
  result = Slim::Template.new('index.html.slim').render()
  File.write('index.html', result)
end

task :server do
  root = File.expand_path '.'
  server = WEBrick::HTTPServer.new :Port => 8000, :DocumentRoot => root
  trap('INT') { server.shutdown }
  server.start
end
