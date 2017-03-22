require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("http://www.ajou.ac.kr/kr/ajou/notice.jsp"))
notices = doc.css("tbody tr")

notices.each do |n|
  title = n.css('.title_comm a').text.strip
  deadline = n.css('.al_center')[4].text.strip
  writer = n.css('.al_center')[5].text.strip
  puts "title: #{title}, deadline: #{deadline}, writer: #{writer}"
end
