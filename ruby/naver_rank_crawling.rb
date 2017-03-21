require 'nokogiri'
require 'open-uri'

@ranks = Array.new

doc = Nokogiri::HTML(open("http://www.naver.com"))
rank_list = doc.css("#realrank li a .ell")

puts '<20위까지>'
rank_list.each do |rl|
  puts rl.inner_text
end

1.upto(10) do |i|
  @ranks << rank_list[i-1].inner_text
end

puts ''
puts '<10위까지>'
@ranks.each do |r|
  puts r
end
