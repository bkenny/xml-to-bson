require 'rubygems'
require 'bson'
require 'net/http'
require 'active_support/core_ext'
require 'crack'
require 'uri'

def xml_to_bson(feed_uri)
  @xml = Net::HTTP.get_response(URI.parse(feed_uri)).body
  @json = Crack::XML.parse(@xml)
  BSON.serialize(@json)
end

def deserialize_bson(bson)
  BSON.deserialize(bson.unpack("C*"))
end

command = ARGV[0]
uri = ARGV[1]

if command == "serialize"
  puts xml_to_bson("#{uri}").inspect
elsif command == "deserialize"
  @converted = xml_to_bson("#{uri}").to_s
  puts deserialize_bson(@converted)
end