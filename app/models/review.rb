class Review
  @@all = []

  attr_reader :customer, :restaurant
  attr_accessor :content, :rating

  def initialize(customer, restaurant, content, rating)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end

  def customer
    Review.all.select do |review|
      review.customer == self
    end
  end

  def restaurant
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def rating
    Review.all.select do |review|
      review.rating == self
    end
  end

  def content
    Review.all.select do |review|
      review.content == self
    end
  end

end
