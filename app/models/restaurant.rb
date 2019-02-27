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
      restaurant_name == restaurant.restaurant_name
    end

  end

end
