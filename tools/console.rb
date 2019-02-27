require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

diana = Customer.new("Diana", "Lee")
diana1 = Customer.new("Diana", "Doe")
john = Customer.new("John", "Smith")
jane = Customer.new("Jane", "Doe")

wendys= Restaurant.new("wendys")
bk = Restaurant.new("burger king")
mcd = Restaurant.new("McDonalds")

r1 = Review.new(diana, wendys, 2, "fries are ok")
r2 = Review.new(diana, bk, 1, "fries were soggy")
r3 = Review.new(john, mcd, 4, "fries are great")
r4 = Review.new(john, bk, 5, "amazing dollar menu")
r5 = Review.new(jane, bk, 1, "soggy onion rings")
r6 = Review.new(jane, mcd, 5, "burgers are life")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
