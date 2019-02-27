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
    count = 0
    star_rating = 0
    self.reviews.each do |review|
      count += 1
      star_rating += review.rating
    end
    star_rating.to_f / count.to_f
  end

  def get_review_content
    self.reviews.map do |review|
      review.content
    end
  end

  def longest_review
    longest_string = 0
    string = nil
    self.get_review_content.each do |review|
      if review.size > longest_string
        longest_string = review.size
        string = review
      end
    end
    string
  end

end
