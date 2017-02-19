require "sentimental"

analyzer = Sentimental.new
analyzer.load_defaults

analyzer.threshold = 0.1

sentiment = analyzer.sentiment "I hate Ruby"
score = analyzer.score "I hate Ruby"

puts "#{sentiment} with #{score}"
