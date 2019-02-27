class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_all_by_first_name(first_name)
    Customer.all.select {|n| n.first_name == first_name }
  end

  def self.all_names
    # should return an **array** of all of the customer full names
    Customer.all.map {|n| "#{n.first_name} #{n.last_name}"}
  end

  def add_review(restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  #   if Restaurant.all.include?(restaurant) != true
  #   Restaurant.new(restaurant)
  # end
  end

  def num_reviews
    myreview = Review.all.select {|r| r.customer == self}
    myreview.length
  end

  def restaurants
    myreview = Review.all.select {|r| r.customer == self}
    myreview.map {|r| r.restaurant}
  end

  
end
