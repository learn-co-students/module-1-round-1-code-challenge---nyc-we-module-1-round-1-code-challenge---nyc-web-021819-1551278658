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
    reviews.map do |review|
      review.customer
    end.uniq
  end

  #this instance method returns avberage star rating based on reviews
  #use helper method, reviews
  #use inject method to iterate over rating #
  #divide sum by reviews.length

  def average_star_rating
    reviews.inject(0) do |result, review|
      result + review.rating
    end / reviews.length
  end

  #this instance method returns the longest review content for self
  #sort by content.length
  def longest_review
    reviews.sort_by do |review|
      review.content.length
    end.last
  end

end
