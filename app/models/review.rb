class Review

  attr_reader :customer, :restaurant, :rating, :content

  @@all = []

  def initialize(customer, restaurant, rating, content)
    @customer = customer
    @restaurant = restaurant
    @rating = rating  #<---- setting boundaries so that rating is between 1 and 5 (inclusive)
    if rating > 5
       @rating = 5
    elsif rating < 1
       @rating = 1
    end
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end


end
