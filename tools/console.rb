require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


vicky = Customer.new("Vicky", "Durmstrang")
ronald = Customer.new("Ronald", "McDonald")
ashley = Customer.new("Ashley", "Dobbins")
garcia = Customer.new("Ronald", "Garcia")

mcdumbles = Restaurant.new("McDumble's")
chevys = Restaurant.new("Chevy's")
rainforest = Restaurant.new("Rainforest Cafe")
chevys2 = Restaurant.new("Chevy's")


review1 = Review.new(vicky, chevys, 6, "So great!")
review2 = Review.new(garcia, rainforest, 3, "Okay")

ashley.add_review(mcdumbles, 0, "absolutely awful!")
garcia.add_review(chevys, 5, "soooo goood!")
ronald.add_review(rainforest, 9, "I LOVE the chimpanzees here! So realistic!")
ashley.add_review(rainforest, 4, "quite good!")
ashley.add_review(chevys, 1, "don't know what the fuss is all about")
ashley.add_review(chevys, 3, "honestly it was better the second time")
ashley.add_review(chevys, 0, "okay it was even worse the third time than the third time!")
ronald.add_review(chevys, 4, "I'm not sure why people hate on this place.")
vicky.add_review(chevys, 3, "Supercalifragilisticexpealidocious. Supercalifragilisticexpealidocious.Supercalifragilisticexpealidocious!!!!!! Mary Poppins is the best. Also I ate here and didn't get food poinsoning. Yay me!")
ronald.add_review(mcdumbles, 20, "ZOMGZ!! I love this place so much it's easily my fav of all time!!!")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
