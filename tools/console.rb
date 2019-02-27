require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
customer1 = Customer.new("john", "smith")
customer2 = Customer.new("jane", "doe")
customer3 = Customer.new("matt", "plaut")
customer4 = Customer.new("carl", "jones")
customer5 = Customer.new("carl", "johnson")

restaurant1 = Restaurant.new("chipotle")
restaurant2 = Restaurant.new("cava")
restaurant3 = Restaurant.new("dig inn")
restaurant4 = Restaurant.new("omars")
restaurant5 = Restaurant.new("shake shack")

review1 = Review.new(customer1, restaurant1, 3, "ok")
review2 = Review.new(customer1, restaurant2, 2, "eh")
review3 = Review.new(customer2, restaurant4, 5, "great")
review4 = Review.new(customer2, restaurant5, 1, "terrible")
review5 = Review.new(customer3, restaurant1, 2, "eh")
review6 = Review.new(customer3, restaurant2, 5, "great")
review7 = Review.new(customer4, restaurant3, 1, "terrible")
review8 = Review.new(customer4, restaurant3, 4, "good")
review9 = Review.new(customer5, restaurant1, 5, "great")
review10 = Review.new(customer5, restaurant4, 3, "ok")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
