class Review

  attr_accessor :restaurant, :customer, :content
  attr_reader :rating

  @@all = []

    #!!!rating should be an integer between 1-5"
  def initialize(restaurant, customer, content, rating)
    @restaurant = restaurant
    @customer = customer
    @content = content
    if rating > 5
      rating = 5
    elsif rating < 0
      rating = 0
    else @rating = rating
    end
    @rating = rating
    @@all << self
  end

#if user decides to change review rating,
#min/max logic will run for writer method
  def rating=(rating)
    if rating > 5
      rating = 5
    elsif rating < 0
      rating = 0
    else @rating = rating
    end
  end

  def self.all
    @@all
  end

end
