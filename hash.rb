# hash is an unordered, object indexed, collection of objects
# key :value

numbers = { "shalini" => "01243",
			"ani" => "21324",
			"rajiv" => "99003",
			"ajinkya" => ["65432","76574"]
		  }


puts "Shalini : #{numbers["shalini"]}"
numbers["visaka"] = "234235"
puts "After addition : #{numbers}"

puts "*" * 50
puts " \t \t Contact Nos"
puts "*" * 50

numbers.each do |key,value|
	puts "Name : #{key}, Phone = #{value}"
end


puts "Whose number : #{numbers.key("99003")}" #have a doubt here

#This uses select to search for one of the hash value and then returns the key
puts "This is good stuff : #{numbers.select{|key,value| (value.is_a? Array) ? value.include?("65132") : nil}.keys}"


numbers = { "shalini" => "01243",
			"ani" => "21324",
			"rajiv" => "99003",
			"ajinkya" => ["65432","76574"],
			"tushar" => {
						"office" => ["12","23"],
						"personal" => "34",
						"whatsapp" => "45"
						}
		  }

numbers["tushar"]["skype"] = "78"

puts "After Skype addition : #{numbers}"

puts "Tushar Office 2nd Number : #{numbers["tushar"]["office"][1]}"

