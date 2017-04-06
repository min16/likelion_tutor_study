require 'nokogiri'
require 'open-uri'
require 'openssl'

numbers = Array.new
sample = Array.new
doc = Nokogiri::HTML(open("https://search.naver.com/search.naver?where=nexearch&query=%EB%A1%9C%EB%98%90%EB%8B%B9%EC%B2%A8%EB%B2%88%ED%98%B8&sm=top_sug.mbk&fbm=1&acr=1&acq=%EB%A1%9C%EB%98%90%EB%8B%B9%EC%A0%90&qdt=0&ie=utf8", 'User-Agent' => 'ruby'))
lotto_number = doc.css(".num_box .num")

lotto_number.each do |n|
  numbers << n.text.to_i
end
puts "numbers: #{numbers}"

number_list = Array 1..45  #Array '1'..'45'
sample = number_list.sample(7)
puts "sample: #{sample}"

match = Array.new

0.upto(sample.size-1) do |i|
  if numbers.include?(sample[i])
    match << sample[i]
  end
end

print "일치하는 번호: #{match}\n"
puts "일치 갯수: #{match.size}"
