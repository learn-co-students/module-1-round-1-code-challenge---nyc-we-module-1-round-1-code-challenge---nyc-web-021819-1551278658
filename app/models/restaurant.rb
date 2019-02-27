class Restaurant
  attr_accessor :name

  #create an empty array to store all of our class instances
  @@all = []

  def initialize(name)
    @name = name
    #push all of our class instances into our array
    @@all << self
  end

  #create a class method that returns our array of all class instances
  def self.all
    @@all
  end

  #create a class method that iterates through our array of Restaurant instances
  #find the first one for which the restaurant name equals the name passed in.
  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

  #iterate into our Review class (joiner) and select all of the reviews
  #for which the restaurant is equal to ourself (this restaurant instance)
  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  #iterate into our #reviews method (which contains all of this restaurant's reviews
  #push all of the customers that left these reviews into a new array.
  #call .uniq to delete duplicate restaurants
  def customers
    reviews.map do |review|
      review.customer
    end.uniq
  end

  #iterate into our #reviews method and push all of the review ratings to a new array
  #sum up this array using .inject and store this in a variable
  #divide the total by the length of the #reviews array (i.e. total number of reviews for this restaurant)
  def average_star_rating
    total_rating = self.reviews.map { |review| review.rating}.inject(:+)
    total_rating.to_f / self.reviews.length
  end

  #user max_by to look into our #reviews method and find the review content
  #that is max length. then call .content so that we return the actual
  #string of the reveiw 
  def longest_review
    reviews.max_by { |review| review.content.length}.content
  end

end
