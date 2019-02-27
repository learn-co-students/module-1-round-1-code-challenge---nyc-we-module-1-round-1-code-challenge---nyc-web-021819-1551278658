class Restaurant
  @@all = []

  attr_accessor :name,

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    Restaurant.all.find do |restaurant|
      restaurant.name == self
    end
  end

  def customers
    reviews.uniq
  end

  def reviews
    all_restaurant_reviews =
    Review.all.select do |review|
      review.restaurant == self
    end
    all_restaurant_reviews
  end

  def average_star_rating
    all_ratings =
    Review.all.select do |review|
      review.rating == self
    end
    all_ratings.reduce(:+).to_f / all_raings.size
  end

  #stuck on longest_review.
end
