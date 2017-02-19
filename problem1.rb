#Problem1
numbers = [10,20,25,40,-5,-10,21]

count_positive = 0
sum_negative = 0

numbers.each do |number|
	if(number<0)
		sum_negative+=number
	else
		count_positive+=1
	end
end

puts "Positive Numbers : #{count_positive}"
puts "Sum Negative Numbers : #{sum_negative}"


#Problem1 Alternative
numbers = [10,20,25,40,-5,-10,21]
positive_numbers = numbers.find_all{|number| number >= 0}
negative_numbers = numbers.find_all{|number| number < 0}



#Problem2
number = 12789234
num_to_array = number.to_s.split('')
output = ''
num_to_array.each do |str|

	if(str.to_i<5)
		output += '0'
	else
		output += '1'	
	end
end
puts "Expected output: #{output}"

#Problem3
numbers = [10,20,25,40,-5,-10,21,20,20]
count_20 = 0
numbers.each do |number|
	if(number == 20)
		count_20+=1
	end
end
puts "Count of 20 : #{count_20}"


#Problem3 Alternate using find_all
numbers = [10,20,25,40,-5,-10,21,20,20]
find_number = 20
result = numbers.find_all{|number| number == find_number}
if result.empty?
	puts "#{find_number} does not exist"
else
	puts "#{find_number} exists #{result.count} times"
end




#Problem4
names = ["suresh","ramesh","veeresh","mahesh"]

is_mohan = 0
is_ramesh = 0

#Iterate for each name and set the flag to 1 if the name is present
names.each do |name|
	if(name == "mohan")
		is_mohan = 1
	elsif(name == "ramesh")
		is_ramesh = 1
	end
end

#Display if Mohan is present
if(is_mohan == 1)
	puts "Mohan is present"
else
	puts "Mohan is absent"
end

#Display if Ramesh is present
if(is_ramesh == 1)
	puts "Ramesh is present"
else
	puts "Ramesh is absent"
end


#Problem4 : Alternate
names = ["suresh","ramesh","veeresh","mahesh"]
search = "suresh"

# Using include with boolean.
if names.include?(search)
	puts "#{search} is present in the array"
else
	puts "#{search} is absent in the array"
end

#Using find. Find returns the value that is getting searched else nil
result = names.find{|name| name == search}

if result.nil?
	puts "#{search} not found"
else
	puts "#{search} found"
end






#Problem 5 : Find the sum of input
inputs = [10,20,30,[40,50]]

sum_inputs = 0

#OuterLoop
inputs.each do |input|
	if(input.class == Fixnum)
		sum_inputs += input

	elsif(input.class == Array)
		#InnerLoop	
		input.each do |inner_num|
			sum_inputs+= inner_num
		end
	end
end
puts "Sum : #{sum_inputs}"