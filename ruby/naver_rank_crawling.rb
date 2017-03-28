require 'nokogiri'
require 'open-uri'

@ranks = Array.new

doc = Nokogiri::HTML(open("http://www.naver.com"))
rank_list = doc.css(".ah_item .ah_k")

puts '<20위까지>'
rank_list.each do |rl|
  puts rl.text
end

1.upto(10) do |i|
  @ranks << rank_list[i-1].text
end

puts ''
puts '<10위까지>'
@ranks.each do |r|
  puts r
end
