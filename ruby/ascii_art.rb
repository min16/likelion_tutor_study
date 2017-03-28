require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("http://patorjk.com/software/taag/#p=display&f=Graffiti&t=Type%20Something%20"))
fontList = doc.css("#fontList").text
puts fontList

input = gets.chomp()
puts input
