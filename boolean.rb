is_true = true 
is_false = false 

is_nil = nil 
numbers = []
items = ["shoe","bike","car"]
mobile = { "shalini" => "01243",
			"ani" => "21324",
			"rajiv" => "99003",
			"ajinkya" => ["65432","76574"]
		  }


puts 10.between? 1,25
puts is_nil.nil?
puts numbers.empty?
puts numbers.nil?

puts mobile.has_key? "raju"
puts mobile.has_value? "01243"
puts items.include? "motor"

puts items[2]
puts items[5] = 10

puts "#{items}"