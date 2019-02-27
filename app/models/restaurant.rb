class Restaurant
  @@all = []

  attr_accessor :name,:review

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name_str) #i change here from name to name_str so its easier to read 
    self.all.select do |restaurant|
      restaurant.name.to_s == name_str
      end.first 
  end 

  def customers
    Review.all.select do |review|
      review.restaurant = self
    end.map do |review|
      review.customers
    end
  end 

  def restaurants
    Review.all.select do |review|
      review.restaurant = self
    end
  end 

end
