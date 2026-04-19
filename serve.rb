require 'webrick'
server = WEBrick::HTTPServer.new(:Port => 4322, :DocumentRoot => '/Users/ludwigbauer/Desktop/n8n/halleluja-os')
trap('INT') { server.shutdown }
server.start
