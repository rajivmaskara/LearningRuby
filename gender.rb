require 'httparty'
api_key = "pRPLCejozFwCHFbVCR"

puts "Enter first name"
name = gets.chomp

response = HTTParty.get("https://www.gender-api.com/get?name=#{name}&key=#{api_key}")

puts "The gender of #{name} is #{response["gender"]}"