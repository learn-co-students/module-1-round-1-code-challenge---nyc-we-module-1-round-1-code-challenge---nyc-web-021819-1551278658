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


  #class method, given string of **full name**, return
  #first customer whose full name matches
  #Customer object containts two attributes, first and last name
  #combine attributes into string to match method argument
  def self.find_by_name(full_name)
    self.all.find do |customer|
      "#{customer.first_name} #{customer.last_name}" == full_name
    end
  end

  #given string of first name, return array containing
  #all customers with that first name

  def self.find_all_by_first_name(name)
    self.all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    self.all.map do |customer|
      "#{customer.first_name} #{customer.last_name}"
    end
  end


  def add_review(restaurant, content, rating)
    Review.new(restaurant, self, content, rating)
  end

  #instance method returns array of all review
  #objects belonging to self

  def reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  #instance method returns total num of reviews
  #customer has authored
  def num_reviews
    reviews.length
  end

  #instance method returns **Uniqe** array of all rest.
  #customer has reviewed
  def restaurants
    reviews.map do |review|
      review.restaurant
    end.uniq
  end

end
