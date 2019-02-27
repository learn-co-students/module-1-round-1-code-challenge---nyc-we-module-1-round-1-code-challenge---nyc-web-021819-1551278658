require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

joes = Customer.new("joe", "smith")
joem = Customer.new("joe", "math")
jay = Customer.new("jay", "son")
bob = Customer.new("bob", "burger")

regional = Restaurant.new("Regional")
shakeshack = Restaurant.new("Shake Shack")
chipotle = Restaurant.new("Chipotle")
innout = Restaurant.new("In N Out")

review_1 = Review.new(joes, regional, 2, "bad pasta")
review_2 = Review.new(joes, innout, 5, "good burger")
review_3 = Review.new(joem, shakeshack, 1, "bad mushroom burger")
review_4 = Review.new(jay, chipotle, 4, "decent service")
review_5 = Review.new(bob, innout, 3, "mediocre")
review_6 = Review.new(bob, innout, 4, "better this time")
review_7 = Review.new(jay, innout, 1, "grrrrrrrrrrroooooooooooooossssssssssssssssssssssss")
review_8 = Review.new(joem, innout, 1, "too busy")
review_9 = Review.new(jay, regional, 3, "weird ambiance")
review_10 = Review.new(joem, shakeshack, 5, "Everything I ever could have wanted!")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
