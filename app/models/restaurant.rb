class Restaurant

  @@all = []

  attr_accessor :name

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
    #returns as a float
    (self.reviews.inject(0){|sum, review| sum + review.rating.to_f})/
    (self.reviews.length.to_f)
  end

  def average_star_rating_int
    #didn't know which one y'all wanted, so I gave you both :)
    average_star_rating.round
  end

  def longest_review
    #sorts an array of reviews by the length of the content, then returns the last member of that sorted array
    self.reviews.sort_by do |review|
      review.content.length
    end[-1]
  end

end
