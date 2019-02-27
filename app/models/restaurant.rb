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


  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    self.reviews.map do |review|
      review.customer
    end.uniq
  end

  def average_star_rating
    total_stars = 0
    self.reviews.map do |review|
      total_stars += review.rating
    end
    total_stars.to_f/self.reviews.length.to_f
  end

  def longest_review
    max_review_length = 0
    max_review = nil
    self.reviews.map do |review|
      if review.content.length > max_review_length
        max_review_length = review.content.length
        max_review = review.content
      end
    end
    max_review
  end




end
