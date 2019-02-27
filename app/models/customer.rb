class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  def self.all
    @@all
  end

  def self.find_by_name(name)
    #search through all customers, concatenating names, returning the one that matches the conc name
    self.all.find {|customer| customer.full_name == name}
  end

  def self.find_all_by_first_name(name)
    #search through all, return cust objects into an array based on first name
    self.all.select{|customer| customer.first_name == name}
  end

  def self.all_names
    #iterate through each cust object in the class, conc names, push to array then return array
    self.all.map{|customer| customer.full_name}
  end

  def full_name
    #conc name for find by name
    first_name + last_name
  end

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    Customer.all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    #Add all my reviews in the review class to array and count the length
    Review.all.select {|review| review.customer == self}.length
  end

  def reviews
    #get customers reviews
    Review.all.select {|review| review.customer == self}
  end

  def restaurants
    #get to restaurants through reviews
    reviews.map {|review| review.restaurant}.uniq
  end

end
