class Restaurant

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name
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

  def average_star_rating
    sum_rating = reviews.inject(0) do |sum, review|
      if review.rating == nil
        sum + 0
      else
        sum + review.rating
      end
    end
    sum_rating.to_f / reviews.length.to_f
  end

  def longest_review
    reviews.sort_by do |review|
      review.content.length
    end.last
  end
  
end
