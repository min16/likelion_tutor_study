require 'nokogiri'
require 'open-uri'


numbers = Array.new
doc = Nokogiri::HTML(open("https://search.naver.com/search.naver?where=nexearch&query=%EB%A1%9C%EB%98%90%EB%8B%B9%EC%B2%A8%EB%B2%88%ED%98%B8&sm=top_sug.mbk&fbm=1&acr=1&acq=%EB%A1%9C%EB%98%90%EB%8B%B9%EC%A0%90&qdt=0&ie=utf8", 'User-Agent' => 'ruby'))
lotto_number = doc.css(".num_box .num")

puts '<numbers>'
lotto_number.each do |n|
  numbers << n.inner_text
end
puts numbers

puts '<sample>'
number_list = Array 1..45
sample = number_list.sample(7)
puts sample

# @numbers = [3, 25, 12, 36, 9, 10, 11]
# puts @numbers
# puts ""

# @sample = [25, 36, 12, 4, 5, 6, 7]
# puts '<sample>'
# puts @sample\

match = Array.new

0.upto(sample.size-1) do |i|
  if numbers.include?(sample[i])
    match << sample[i]
  end
end

puts ''
puts '<일치갯수>'
puts match
puts match.size
