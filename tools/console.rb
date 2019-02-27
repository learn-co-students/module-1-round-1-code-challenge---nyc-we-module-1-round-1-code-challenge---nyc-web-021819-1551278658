require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#initialize customers
grumps = Customer.new("Guy", "GrumpyMan")
fartymcFart = Customer.new("Farty", "McFart")
hungryHippo = Customer.new("Hungry", "Hippo")

#initialize restaurants
reallyBad = Restaurant.new("Really Bad Eats")
reallyGood = Restaurant.new("Really Good Eats")

#Customer adds reviews

review1 = grumps.add_review(reallyBad, "This restaurant was really good but I am so grumpy.", 6)
review2 = grumps.add_review(reallyGood, "This restaurant was really BAD, I am more grumpy.", 1)
review3 = grumps.add_review(reallyGood, "TRIED AGAIN. STILL really BAD. WHY ARE THEY CALLED REALLY GOOOOODDD???? I am really grumpy.", -1)
review4 = fartymcFart.add_review(reallyGood, "This restaurant was really BAD and smelly.", -10000)
review5 = fartymcFart.add_review(reallyBad, "This restaurant was really GOOD, but really smelly.", 4)
review6 = hungryHippo.add_review(reallyGood, "GOODFOOD, SMALL PORTION. HUNGRY",5)
review7 = hungryHippo.add_review(reallyBad, "GOODFOOD, SMALL PORTION. HUNGRY",5)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
