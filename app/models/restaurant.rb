class Restaurant
  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    self.name = name
    Restaurant.all << self
  end

  def self.find_by_name(name)
    self.all.find {|restaurant| restaurant.name == name}
  end

  def reviews
    #get rest reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    #get to cust through reviews
    reviews.map {|review| review.customer}.uniq
  end

  def average_star_rating
    #find reviews and add the review.ratings and divide the total by the number of ratings
    reviews.inject(0) {|total, review| total + review.rating}.to_f / reviews.length
  end

  def longest_review
    reviews.max_by {|review| review.content.length}
  end

end
