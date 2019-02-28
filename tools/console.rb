require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("John", "Rivera")
customer2 = Customer.new("Maria", "Ross")
customer3 = Customer.new("Jane", "Q")
customer4 = Customer.new("Tito", "Santos")

sophies = Restaurant.new("Sophies")
cafev = Restaurant.new("cafev")
sophies = Restaurant.new("sophies")
churrascaria = Restaurant.new("churrascaria")

re1 = Review.new(customer1, sophies, "it was bad", 5)
re2 = Review.new(customer2, cafev, "it was delicious", 10)
re3 = Review.new(customer4, cafev, "I wouldnt go back", 4)
re4 = Review.new(customer4, churrascaria, "ehh", 5)
re4 = Review.new(customer4, churrascaria, "ehh", 5)

# customer1 = customer1.full_name
# re1 = re1.restaurant(customer1, sophies, "it was bad", 5)
#


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
