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
    self.all.find do |restaurants|
      restaurants.name == name
    end
  end

  def customers
    Review.all.map do |reviews|
      reviews.customer
    end
  end

   def reviews
     Review.all.select do |reviews|
       reviews.restaurant == self
     end
   end

  def average_star_rating
    #I want to get the sum of the star ratings for
  ratings =  Review.all.map do |reviews|
      reviews.rating
    end
  end


end
