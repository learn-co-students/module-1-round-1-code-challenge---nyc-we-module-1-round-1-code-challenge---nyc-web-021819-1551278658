require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console



naomi_katz = Customer.new("Naomi", "Katz")
brian_katz = Customer.new("Brian", "Katz")
shelley_greenspan = Customer.new("Shelley", "Greenspan")
julian_rafa = Customer.new("Julian", "Rafa")
craig_liebman = Customer.new("Craig", "Liebman")
david_rabizadeh = Customer.new("David", "Rabizadeh")
david_benhayun = Customer.new("David", "Benhayun")
michael_kaufman = Customer.new("Michael", "Kaufman")

julian_zar = Customer.new("Julian", "Zar")
michael_saidian = Customer.new("Michael", "Saidian")
david_strauss = Customer.new("David", "Strauss")
rebecca_katz = Customer.new("Rebecca", "Katz")




artichoke = Restaurant.new("Artichoke")
morandi = Restaurant.new("Morandi")
lilia = Restaurant.new("Lilia")
daveys = Restaurant.new("Daveys")
blacktap = Restaurant.new("Blacktap")



review1 = Review.new(naomi_katz, artichoke, 4, "best 4am pizza")
review2 = Review.new(david_benhayun, blacktap, 5, "milkshakes!!!!!")
review3 = Review.new(julian_rafa, artichoke, 4, "sick")
review4 = Review.new(naomi_katz, blacktap, 4, "must try")
review5 = Review.new(naomi_katz, artichoke, 4, "pizzaaaaaa")
review6 = Review.new(david_benhayun, blacktap, 6, "def try")
review7 = Review.new(david_rabizadeh, blacktap, 0, "worst")


binding.pry

0 #leave this here to ensure binding.pry isn't the last line
