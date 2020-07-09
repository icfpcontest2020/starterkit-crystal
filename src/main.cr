require "http/client"
require "uri"

def main
  serverurl = ARGV[0]
  playerkey = ARGV[1]
  puts "ServerUrl: %s; PlayerKey: %s" % [serverurl, playerkey]

  uri = URI.parse(serverurl + "?playerKey=#{playerkey}")
  res = HTTP::Client.get uri
  puts res.status_code
end

main
