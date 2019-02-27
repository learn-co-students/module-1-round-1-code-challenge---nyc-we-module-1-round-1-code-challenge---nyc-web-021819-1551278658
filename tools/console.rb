require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#test Restaurant
mcdonals = Restaurant.new ("Mcdonals")
nobu = Restaurant.new ("Nubu")
italaianmama = Restaurant.new ("Italaian Mama")
pizzaking = Restaurant.new ("Pizza King")
chinaexpress = Restaurant.new ("China Express")
richpeopleonly = Restaurant.new ("Rich Only")

#test Customer
lebon = Customer.new("Lebon","James")
bill = Customer.new("Bill","Gates")
victoria = Customer.new("Victoria","Mei")
jeff = Customer.new("Jeff","Bezos")
jayz = Customer.new("jay","Z")
vicky = Customer.new("Victoria","May")

#test Review
review1 = Review.new(lebon,chinaexpress)
review2 = Review.new(lebon,richpeopleonly)
review3 = Review.new(bill,richpeopleonly)
review4 = Review.new(bill,italaianmama)
review5 = Review.new(bill,mcdonals)
review6 = Review.new(victoria,nobu)
review7 = Review.new(jayz,nobu)
review8 = Review.new(jeff,richpeopleonly)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line