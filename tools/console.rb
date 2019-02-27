require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

john_rivera = Customer.new("John", "Rivera")
maria_ross = Customer.new("Maria", "Ross")
jane_q = Customer.new("Jane", "Q")
tito_santos = Customer.new("Tito", "Santos")

sophies = Restaurant.new("Sophies")
cafev = Restaurant.new("cafev")
sophies = Restaurant.new("sophies")
churrascaria = Restaurant.new("churrascaria")

re1 = Review.new(john_rivera, sophies)
re2 = Review.new(maria_ross, cafev)
re3 = Review.new(jane_q, cafev)
re4 = Review.new(jane_q, churrascaria)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
