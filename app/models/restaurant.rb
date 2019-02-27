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
    self.all.find {|restaurant| restaurant.name == name}
  end

  def customers
    Review.all.map {|review| review.customer if review.restaurant == self}.uniq.compact
  end

  def reviews
    Review.all.map {|review| review if review.restaurant == self}.compact
  end

  def average_star_rating
    total_rating = (self.reviews.map {|review| review.rating}).inject(:+)
    num_ratings = self.reviews.length
    rating = (total_rating.to_f / num_ratings.to_f).round(2)
  end

  def longest_review
    self.reviews.sort_by {|review| review.content.length}[-1]
  end

end
