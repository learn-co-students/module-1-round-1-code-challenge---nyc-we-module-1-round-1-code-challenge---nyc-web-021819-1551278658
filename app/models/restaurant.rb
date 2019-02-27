#restaurant has many reviews
#restaurant has many customers through reviews


class Restaurant
  attr_accessor :restaurant_name

  @@all = [].uniq

  def initialize(restaurant_name)
    @restaurant_name = restaurant_name
    @@all << self
  end


  def self.all
    @@all
  end


  def self.find_by_name(restaurant_name) #Restaurant.find_by_name(name) given a string of restaurant name, returns the first restaurant that matches
    Restaurant.all.find do |restaurant|
      restaurant.restaurant_name == restaurant_name
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
    rating_array = reviews.map do |review|
      review.rating
    end
    rating_array_length = rating_array.length.to_f
    rating_array_sum = rating_array.inject(:+).to_f
    rating_array_sum/rating_array_length
  end


  def longest_review
    reviews.max_by do |review|
      review.content.length
    end

  end

end
