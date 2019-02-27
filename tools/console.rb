require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cus1 = Customer.new("cust", "one")
cus2 = Customer.new("custom", "two")
cus3 = Customer.new("cust", "three")
cus4 = Customer.new("cust", "four")
cus5 = Customer.new("custom", "five")

res1 = Restaurant.new("one")
res2 = Restaurant.new("two")
res3 = Restaurant.new("three")
res4 = Restaurant.new("four")
res5 = Restaurant.new("five")

rev1 = Review.new(cus5, res5, "Wow so great!", 5)
rev2 = Review.new(cus4, res4, "Dang just pretty good!", 4)
rev1 = Review.new(cus5, res1, "Wow so great!", 5)
rev1 = Review.new(cus5, res1, "Wow so great!", 3)
rev1 = Review.new(cus5, res1, "Wow so great!!!!!!!!!!!!!!!!!!!!!", 2)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line