require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("http://patorjk.com/software/taag/#p=display&f=Graffiti&t=Type%20Something%20"))
font_list = doc.css("#fontList").text
puts font_list

input = gets.chomp()
puts input
