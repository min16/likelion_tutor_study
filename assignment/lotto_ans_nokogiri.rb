require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('http://www.nlotto.co.kr/common.do?method=main'))
lotto_list = doc.css('.lotto_num img')

lotto_numbers = []

# lotto_list.map do |l|
#   if l['class'] != 'more'
#     lotto_numbers << l['alt'].to_i
#   end
# end

lotto_numbers = lotto_list.map { |i| i['alt'] }

p lotto_numbers.uniq
