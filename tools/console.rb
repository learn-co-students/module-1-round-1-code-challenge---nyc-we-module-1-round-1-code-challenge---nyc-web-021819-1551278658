require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

bob = Customer.new('Bob', 'Mayor')
tala = Customer.new('Tala', 'Siraj')
mo = Customer.new('Mo', 'Zaben')
mo2 = Customer.new('Mo', 'Hamad')

noodasia = Restaurant.new('Noodasia')
pret = Restaurant.new('Pret')

noodasia_review = Review.new(bob, noodasia, 5, 'This place is great')
noodasia_review2 = Review.new(bob, noodasia, 1, 'Bad second experience')
pret_review = Review.new(mo, pret, 3, 'Great food')
pret_review2 = Review.new(mo2,pret, 2, 'Bad place')
pret_review3 = Review.new(bob, pret, 4, 'Amazing sandwiches')
noodasia_review3 = Review.new(tala, noodasia, 2, 'Great sushi')


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
