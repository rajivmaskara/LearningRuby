enable_debugger = true

require 'pry' if enable_debugger

names = ["virat","virat","sachin","dhoni","virat"]
#Unique names in the array
names_unique = names.uniq

names_output = {}

binding.pry if enable_debugger
#puts names_unique
#This loops for all the unique names and then uses find_all and count to count the number of occurences
#The count is then entered into the hash of the name as the value
names_unique.each do |find_name|
	binding.pry if enable_debugger
	names_output[find_name] = (names.find_all {|name| name == find_name}).count
	binding.pry if enable_debugger
end


#Output as desired where the no of star appears as the count
names_output.each do |name,count|
	binding.pry if enable_debugger
	puts "#{name} : #{'*' * count}" 
end


=begin

#Alternate
names_unique.each do |find_name|
	names_output[find_name] = names.count(name)
end






numbers = { "shalini" => "01243",
			"ani" => "21324",
			"rajiv" => "99003",
			"ajinkya" => ["65432","76574"]
		  }


numbers.find{|key,value| numbers.value["65432"]}
=end