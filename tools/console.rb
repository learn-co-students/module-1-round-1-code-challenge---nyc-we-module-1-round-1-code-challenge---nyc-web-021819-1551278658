require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#Customer.new(first_name, last_name)
c1 = Customer.new("Kate", "Kim")
c2 = Customer.new("Brian", "Fischman")
c3 = Customer.new("Ella", "theCute")


#Restaurant.new(name)
r1 = Restaurant.new("The stake")
r2 = Restaurant.new("My Precious Burger")
r3 = Restaurant.new("Crazly Delicious Pizza")


#Review.new(customer, restaurant, rating = nil, review)
rv1 = Review.new(c1, r1, 3 ,"Hmm")
rv2 = Review.new(c2, r2, 5 ,"the best burger in town")
rv5 = Review.new(c3, r2, 5 ,"the best burger in town ever")
rv3 = Review.new(c3, r1, 1 , "mo meat")
rv4 = Review.new(c2, r3, 10, "This place is crazy")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
