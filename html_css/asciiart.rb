require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("http://patorjk.com/software/taag/#p=display&f=Doom&t=Hack%20your%20life"))
fontList = doc.css("#fontList")

print fontList
