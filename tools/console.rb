require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

alex = Customer.new("Alex", "Ge")
nate = Customer.new("Nate", "Smith")
sam = Customer.new("Sam", "Iam")

arby = Restaurant.new("Arby's")
fridays = Restaurant.new("TGIF")
lobster = Restaurant.new("Red Lobster")

rev1 = Review.new(alex, arby, 5, "Great fries!!!")
rev2 = Review.new(sam, arby, 3, "Wasn't the best")
rev3 = Review.new(sam, fridays, 4, "Best place on a friday!!!")
rev4 = Review.new(nate, fridays, 2, "I hate fridays")
rev5 = Review.new(alex, fridays, 3, "Longesttttttttttttttttttttttttttttttttttt")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
