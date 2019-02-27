require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
nathaniel = Customer.new("nathaniel", "cain")
john = Customer.new("john", "doe")

review1 = Review.new("nathaniel", "arbys", "food was bad", 1)
review2 = Review.new("john", "ihop", "food was good", 4)

arbys = Restaurant.new("arbys")
ihop = Restaurant.new("ihop")
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
