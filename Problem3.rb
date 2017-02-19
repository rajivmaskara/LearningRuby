#Problem3 Alternate using find_all
numbers = [10,20,25,40,-5,-10,21,20,20]
find_number = 23
result = numbers.find_all{|number| number == find_number}
if result.empty?
	puts "#{find_number} does not exist"
else
	puts "#{find_number} exists #{result.count} times"
end
