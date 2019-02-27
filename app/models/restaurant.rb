class Restaurant
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

  #helper method
  def reviews
    Review.all.select do |reviews|
      reviews.restaurant == self
    end
  end

  def customers
    self.reviews.map do |reviews|
      reviews.customer
    end
  end

  def average_star_rating
    total_rating = []
    self.reviews.select do |reviews|
      total_rating << reviews.rating
    end
    (total_rating.inject(:+).to_f / self.reviews.length.to_f)
  end

  def longest_review
    self.reviews.sort_by do |reviews|
      reviews.content
    end.last
  end

end
