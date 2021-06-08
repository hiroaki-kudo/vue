require 'webrick'
server = WEBrick::HTTPServer.new({
  :DocumentRoot => '.',
  :CGIInterpreter => WEBrick::HTTPServlet::CGIHandler::Ruby,
  :Port => '3000',
})
['INT', 'TERM'].each {|signal|
  Signal.trap(signal){ server.shutdown }
}
server.mount('/', WEBrick::HTTPServlet::ERBHandler, 'test_kadai.html.erb')
server.mount('/indicate.cgi', WEBrick::HTTPServlet::CGIHandler, 'indicate_kadai.rb')
server.mount('/goya.cgi', WEBrick::HTTPServlet::CGIHandler, 'goya_kadai.rb')
server.mount('/goya2.cgi', WEBrick::HTTPServlet::CGIHandler, 'goya_kadai2.rb')
server.mount('/goya3.cgi', WEBrick::HTTPServlet::CGIHandler, 'goya_kadai3.rb')
server.start
