class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select { |review| review.restaurant == self }
  end

  def customers
    reviews.map(&:customer).uniq
  end

  def ratings
    reviews.map(&:rating)
  end

  def ratings_to_float
    ratings.map do |rating|
      rating.to_f
    end
  end

  def average_star_rating
    ratings_to_float.inject(:+) / reviews.length
  end

  def longest_review
    reviews.max_by { |review| review.content.length }
  end



  def self.find_by_name(name)
    self.all.find { |restaurant| restaurant.name == name }
  end

  def self.all
    @@all
  end



end
