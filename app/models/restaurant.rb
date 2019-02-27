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

  def my_resturants
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant == name
    end
  end

  def my_reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    my_reviews.map do |reviews|
      reviews.customer
    end.uniq
  end

def reviews
  my_reviews.map do |reviews|
    reviews.content
  end
end

  def sum_stars
    my_reviews.inject(0) do |result, rating|
      result + rating.rating
    end
  end

  def average_star_rating
    review_amount = my_reviews.length
    # binding.pry
    sum_stars.to_f / review_amount
  end

  def longest_review
    my_reviews.sort_by do |review|
      review.content.length
    end.last
  end

end # end of restaurant
