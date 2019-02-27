#customer has many reviews
#customer has many restaurants through reviews


class Customer

  attr_accessor :first_name, :last_name

  @@all = [].uniq #make sure i can add the .uniq here - might need to make a separate method

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

  def add_review(restaurant_name, content)
  end

  def num_reviews #Returns the total number of reviews that a customer has authored
binding.pry
    Review.all.select do |review|
      review.full_name == self.full_name
    end.length

  end


end
