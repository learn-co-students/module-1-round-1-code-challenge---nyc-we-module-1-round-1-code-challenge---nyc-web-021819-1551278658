#review has one customer AND has one restaurant (review belongs to a customer and a restaurant)


class Review

  attr_accessor :content, :restaurant, :customer
  attr_reader :rating


  @@all = []

  def initialize(customer, restaurant, rating, content)
    @customer = customer
    @restaurant = restaurant
    self.rating = rating
    @content = content.to_s
    @@all << self
  end

  def self.all
    @@all
  end


  def rating=(rating)
    if rating > 5
      puts "highest possible rating is 5"
      @rating = 5
    elsif rating < 1
      puts "lowest possible rating is 1"
      @rating = 1
    else
      @rating = rating
    end
  end

#need to make a method that restricts the rating from going below 1 and above 5

end
