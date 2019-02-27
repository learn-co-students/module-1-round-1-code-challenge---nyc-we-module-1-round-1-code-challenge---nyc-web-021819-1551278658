#customer has many reviews
#customer has many restaurants through reviews


# Customer.all
# should return all of the customer instances
# Customer.find_by_name(name)
# given a string of a full name, returns the first customer whose full name matches
# Customer.find_all_by_first_name(name)
# given a string of a first name, returns an array containing all customers with that first name
# Customer.all_names
# should return an array of all of the customer full names

class Customer

  attr_accessor :first_name, :last_name

  @@all = [] #make sure i can add the .uniq here - might need to make a separate method

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @@all << self
  end


  def self.all  #Customer.all should return all of the customer instances
    @@all
  end


  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all_names
    self.all.map do |customer|
      customer.full_name
    end
  end


  def self.find_by_name(full_name) #Customer.find_by_name(name) given a string of a full name, returns the first customer whose full name matches
    self.all.find do |customer|
      full_name == customer.full_name
    end
  end

  def self.find_all_by_first_name(first_name)
    self.all.select do |customer|
      first_name == customer.first_name
    end
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content.to_s, rating.to_i)
  end


  def reviews_array
    Review.all.select do |review|
      review.customer == self
    end
  end

  def restaurants
    reviews_array.map do |review|
      review.restaurant.restaurant_name
    end.uniq
  end

  def num_reviews #Returns the total number of reviews that a customer has authored
    Review.all.select do |review|
      review.customer == self
    end.length
  end

end
