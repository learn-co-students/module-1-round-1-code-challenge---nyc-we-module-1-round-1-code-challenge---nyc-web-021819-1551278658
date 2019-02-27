require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

abe = Customer.new("Abe", "Beal")
biz = Customer.new("Biz", "Cool")
biz_uncool = Customer.new("Biz", "Uncool")
carl = Customer.new("Carl", "Jeffries")
fred_green = Customer.new("Fred", "Green")
fred_blue = Customer.new("Fred", "Blue")
fred_blue_2 = Customer.new("Fred", "Blue")

yip = Restaurant.new("Yip's")
paradiso = Restaurant.new("Paradiso")
market = Restaurant.new("Market")
lorna = Restaurant.new("Lorna's")
pino = Restaurant.new("Pino's")
star = Restaurant.new("The Star")

like = Review.new(abe, yip, 4, "I like")
no_like = Review.new(biz, paradiso, 1, "I don't like")
kinda_like = Review.new(abe, yip, 3, "I kinda like")
love = Review.new(biz_uncool, market, 5, "I love")
stay_away = Review.new(abe, paradiso, 0, "Stay away!")
okay = Review.new(carl, pino, 3, "It's okay")
not_great = Review.new(fred_green, lorna, 2, "It's not great")
best_ever = Review.new(fred_blue, star, 6, "Hands down best restaurant I've ever been to")
best_ever_2 = Review.new(fred_blue, star, 7, "Hands down best restaurant I've ever been to. I'm going to keep talking because I want to one up everyone else")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
