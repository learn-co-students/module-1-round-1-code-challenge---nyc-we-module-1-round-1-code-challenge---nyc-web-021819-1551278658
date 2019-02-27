require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
deli = Restaurant.new("Deli")
deli2 = Restaurant.new("Deli")
pizza = Restaurant.new("Pizza Shop")
italian = Restaurant.new("Italian Bistro")

tali = Customer.new("Tali", "Scheer")
andrew = Customer.new("Andrew", "Scheer")
andrew = Customer.new("Andrew", "Mason")

review1 = Review.new(tali, deli, "I love this place", 5)
review2 = Review.new(tali, deli, "Quality went down soooo much", 2)
review3 = Review.new(andrew, pizza, "This place has great pies", 4)
review4 = Review.new(tali, italian, "Yummy pasta", 7)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
