class Review
  attr_accessor :rating, :content
  attr_reader :customer, :restaurant

  @@all = []
  def initialize(customer, restaurant, rating, content)
    @customer = customer
    @restaurant = restaurant
    @rating = rating.to_i
    @content = content.to_s
    @@all << self
  end
  def self.all
    @@all
  end
end
