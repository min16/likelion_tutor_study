# Encoding: utf-8
elements = ["유머감각", "의리", "응큼함", "자존심", "인기"]
counts = ["한스푼", "5스푼", "조금", "69통", "콸콸콸"]

selectedElement = elements.sample(3)
selectedCount = counts.sample(3)

print "이름: "
my_name = gets.chomp()

recipe = Hash.new(3)
for i in 0..2
  recipe.store(selectedElement[i], selectedCount[i])
end

puts recipe

puts "신이 #{my_name}을(를) 만들 때.."
recipe.each do |k,v|
  if v == '한스푼' or v == '5스푼' or v == '조금'
    puts "#{k}을(를) #{v}만 넣는다..ㅎㅎ"
  elsif v == '69통'
    puts "#{k}을(를) #{v}이나 넣는다!!!"
  else
    puts "#{k}을(를) #{v} 넣자!"
  end
end
