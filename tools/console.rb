require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#customers
guy = Customer.new("Guy", "Fieri")
bobby = Customer.new("Bobby", "Flay")
boulud = Customer.new("Daniel", "Boulud")
guy_pierce = Customer.new("Guy", "Pierce")

#customer tests
puts "Puts true if self.find_by_name works for Customer"
puts (Customer.find_by_name(guy.full_name) == guy)

#restaurants
mcdonalds = Restaurant.new("McDonalds")
olive_garden = Restaurant.new("Olive Garden")
flavortown = Restaurant.new("Guy Fieri's American Kitchen")

#restaurant tests
puts "Puts true if self.find_by_name works for Restaurant"
puts (Restaurant.find_by_name("Guy Fieri's American Kitchen") == flavortown)

#reviews
guy_flavortown_review = guy.add_review(flavortown, "It was a one way train right into flavortown that's the stuff yeah damn dude good job.",5)
guy_mcdonalds_review = guy.add_review(mcdonalds, "BAM! Thank you. Hell yeah that's what I'm talking about.", 5)
guy_olive_garden_review = guy.add_review(olive_garden, "Unlimited breadsticks? More like unlimited flavor. My man.", 5)
bobby_flavortown_review = bobby.add_review(flavortown, "An absolute garbage sandwich. Made me want to give up eating.", 1)
guy_flavortown_review_2 = guy.add_review(flavortown, "Had to go back for these flavors. It's an absolute flavor bonfire in your mouth. It's like a reverse dentist, nothing but joy in your mouth, and I want every single part of my mouth operated on by these insane flavors.", 5)

#the rest of the tests
puts "Puts true if flavortown.longest_review is guy's second flavortown review"
puts flavortown.longest_review == guy_flavortown_review_2
puts "Puts flavortown's average star rating (should be around 3.66666 [note the float])"
puts flavortown.average_star_rating
puts "Puts true if flavortown's average star rating as a rounded integer is four"
puts flavortown.average_star_rating_int == 4
puts "Puts true if Guy Fieri has made four reviews"
puts guy.num_reviews == 4

#binding.pry
0 #leave this here to ensure binding.pry isn't the last line
