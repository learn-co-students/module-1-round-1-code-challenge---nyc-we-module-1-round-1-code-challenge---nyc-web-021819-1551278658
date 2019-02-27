require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

tony_chang = Customer.new("tony", "chang")
james_tsao = Customer.new("james", "tsao")
tony_hawk = Customer.new("tony", "hawk")

Mickyd = Restaurant.new("MCD")
BK = Restaurant.new("BK")

review1 = Review.new(tony_chang, BK, 5, "good")
review2 = Review.new(james_tsao, Mickyd, 10, "amazing")
review3 = Review.new(tony_chang, BK, 40, "supsup")
review4 = Review.new(james_tsao, Mickyd, 7, "alksdjfaksdjflksdjfdsjflkd")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line