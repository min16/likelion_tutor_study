require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("https://watcha.net/recommendation?genre=%EB%93%9C%EB%9D%BC%EB%A7%88", 'User-Agent' => 'ruby'))
numbers = doc.css(".payment-bar .payment-bar__text")

print numbers
