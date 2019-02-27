class Review

  @@all = []
  attr_reader :customer, :restaurant, :rating
  attr_accessor :content

  def ratingset(num)
    #adding this helper method to set ratings when they're greater or less than five.
    if num > 5
      5
    elsif num < 1
      1
    else
      num
    end
  end

  def initialize(customer, restaurant, content, rating)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @rating = ratingset(rating)
    @@all << self
  end

  def self.all
    @@all
  end

end
