class Review

  attr_accessor :content
  #cannot change customer or restaurant after review is left, so putting these
  #as attribute readers rather than accessors
  attr_reader :customer, :restaurant, :rating

  #create an empty array to store all of our class instances
  @@all = []

  def initialize(customer, restaurant, content, rating)
    @customer = customer
    @restaurant = restaurant
    #setting content to a string since we want to return a string when called
    @content = content.to_s
    @rating = rating
    #push all of our class instances into our array
    @@all << self
  end

  #create a class method that returns our array of all class instances
  def self.all
    @@all
  end

  #created customer attribute writer to limit reviews to be between 0-5
  def rating=(rating)
    if rating > 5
      puts "Review cannot be greater than 5"
      @rating = 5
    elsif rating < 0
      puts "Review cannot be less than 0"
      @rating = 0
    else
      @rating = rating
    end
  end

end
