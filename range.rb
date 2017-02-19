require 'date'
numbers = 1..100
another_set = 1...100
alphabets = 'a'..'z'
date_range = Date.parse('2017-02-01')..(Date.today)

puts numbers.class
puts numbers.include? 10
puts numbers.include?110

puts "#{numbers}"
puts "#{numbers.to_a}"

alphabets.each do |alphabet|
	print alphabet.upcase
end

print("\n")

puts Date.today.class
puts date_range