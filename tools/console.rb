require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

jessy = Customer.new("Jessy", "Hu")
richard = Customer.new("Richard", "Rob")
joyce = Customer.new("Joyce", "Huang")

mcd = Restaurant.new("Mcdonalds")
mfc = Restaurant.new("Mad for Chicken")
bcd = Restaurant.new("BCD Tofu")

review1 = Review.new(jessy, bcd, 8, "very good")
review2 = Review.new(joyce, mfc, 7, "good")
review3 = Review.new(richard, mcd, 2, "bad bad")
review4 = Review.new(jessy, mfc, 9, "very very good")
review5 = Review.new(jessy, mcd, 3, "no not good")
review6 = Review.new(richard, mfc, 1, "very very very good")
review7 = Review.new(joyce, mcd, 1, "bad")

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
