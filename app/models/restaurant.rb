class Restaurant

  attr_reader :name

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
    total_customers = self.reviews.map do |review|
      review.customer
    end
    total_customers.uniq
  end

# (3 steps!!) 1st - obtaining an of the numerical ratings from each review ("map" is best here), 2nd - add these ratings up to an aggregate using "inject", 3rd - diving this aggregate total by the number of reviews (remember to make it a float!)
  def average_star_rating
    ratings_array = self.reviews.map do |review|
      review.rating           #<----- 1st step - mapping ratings integer values onto array of reviews
    end
    ratings_array_total = ratings_array.inject{|sum,n| sum + n }  #<--- 2nd step - adding these scores together using "inject"
    ratings_array_total.to_f/reviews.length.to_f   #<--- 3rd step - obtaining ratings "average" through division and remembering to make final number a float
  end


# (3 steps!!) 1st - obtaining a list of review content from each review ("map" is best here), 2nd - sorting this list of review content by content length, 3rd - take the last element of this list.
  def longest_review
    content_list = self.reviews.map do |review|
      review.content    #<---- 1st step - mapping review content onto review array
    end
    sorted_content_list = content_list.sort_by do |content| #<--- 2nd step - sorting this array by review content length
      content.length
    end
    sorted_content_list.last  #<---- 3rd step - taking last element of this array
  end




end
