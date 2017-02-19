

# Array is an ordered, integer indexed, collection of objects
numbers = [432,34,345,234,345,45]
names = ["rajiv","rohit","perform"]

puts numbers.to_s

puts numbers[1]
puts numbers[2]

puts "Reverse : #{numbers.reverse.to_s}"

puts "Sort : #{numbers.sort.to_s}"

#immutable methods
puts "First Value : #{numbers.first}"
puts "Unique Value : #{numbers.uniq}"





#mutable methods
names.push("aniruddha","hero")
puts "After Push #{names}"
names.pop
puts "After Pop : #{names}"

after_names = names.unshift("hero")
puts "After unshift #{names}"
puts "Unshift #{after_names}"

after_names = names.shift
puts "After shift : #{names}"
puts "shift : #{after_names}"

names.insert(2,"hero")
puts "After insert : #{names}"

numbers.delete(10)
puts "After delete : #{numbers}"

numbers.delete_at(2)
puts "After delete_at : #{numbers}"

puts "Length : #{names.length}"
puts "Size : #{names.size}"
puts "Count : #{names.count}"

#always keep array variables as plural and block variable as singular - best practice

i = 0
names.each do |name|
	i+=1
	puts "#{i} : #{name.upcase}"
end

names.each_with_index do |name,index|
	puts "#{index+1}. #{name.upcase}"
end

sum_number = 0
numbers.each do |number|
	sum_number += number
end
puts "Sum : #{sum_number}"
puts "Average : #{sum_number/numbers.count}"
puts "Inject : #{numbers.inject(:+)}"
puts "Inject : #{names.inject(:+)}"


puts "Array to String : #{names.join(', ')}"
puts "Numbers to String : #{numbers.join('')}"

