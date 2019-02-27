class Customer

  @@all = []

  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(full_name)
    self.all.find do |customer|
      (customer.first_name == full_name.split[0]) && (customer.last_name == full_name.split[1])
      #full_name.split[0] gives just the first name from a fullname.
    end
  end

  def self.find_all_by_first_name(first_name)
    self.all.select do |customer|
      customer.first_name == first_name
    end
  end

  def self.all_names
    self.all.map do |customer|
      customer.full_name
    end
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def reviews
    #finds all the customer's reviews by looking at reviews. A helper.
    Review.all.select do |review|
      review.customer == self
    end
  end

  def num_reviews
    self.reviews.length
  end

  def restaurants
    #finds all restaurants a customer has reviewed, and returns them as an array of unique values
    self.reviews.map do |review|
      review.restaurant
    end.uniq
  end

end
