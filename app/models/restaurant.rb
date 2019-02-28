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

def customers
  #list all customers that have reviewed
  #a particular restaurant
  Review.all.map do |review|
    review.customer
  end.uniq
end

def reviews
  Review.all.select do |review|
    review.restaurant == self
  end
end



def average_star_rating
  self.reviews.inject(0) {|sum, review| sum + review.rating} /
  self.reviews.length
  end
end

def longest_review
  #we have the reviews method and serves us as a helper method here
  #when we sort_by is in ascending order
  #we are sorting the lenth of the content inside of the review

  self.reviews.sort_by do |review|
    review.content.length
  #
end[-1]
#asking to get the last one which would be the
#-1 index(the highest in sort_by)
end


#=====>> MY SHITTY ANSWERS <=====#

 #
 #  Class Restaurant
 #  attr_accessor :name	  attr_accessor :name
 #
 #
 # @@all = []
 #
 #   def initialize(name)	  def initialize(name)
 #    @name = name	    @name = name
 #
 #     @@all << self
 #  end
 #
 #   def self.all
 #    @@all
 #  end
 #
 #   def self.find_by_name(name)
 #    self.all.find do |restaurants|
 #      restaurants.name == name
 #    end
 #  end	  end
 #
 #
 #   def customers
 #    Review.all.map do |reviews|
 #      reviews.customer
 #    end
 #  end
 #
 #    def reviews
 #     Review.all.select do |reviews|
 #       reviews.restaurant == self
 #     end
 #   end
 #
 #   def average_star_rating
 #    #I want to get the sum of the star ratings for
 #  ratings =  Review.all.map do |reviews|
 #      reviews.rating
 #    end
 #  end
 #
 #
 # end	end
