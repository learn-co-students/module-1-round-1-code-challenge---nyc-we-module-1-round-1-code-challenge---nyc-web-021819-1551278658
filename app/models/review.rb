#review has one customer AND has one restaurant (review belongs to a customer and a restaurant)


class Review

  attr_accessor :rating, :content
  attr_reader :first_name, :last_name, :restaurant_name

  @@all = []

  def initialize(first_name, last_name, restaurant_name, rating, content)
    @first_name = first_name
    @last_name = last_name
    @restaurant_name = restaurant_name
    @rating = rating
    @content = content.to_s
    @@all << self
  end

  def self.all
    @@all
  end

  def customer
    self.first_name + " " + self.last_name
  end


#need to make a method that restricts the rating from going below 1 and above 5

end
