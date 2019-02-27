class Customer
  @@all = []

  attr_accessor :first_name, :last_name

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

  def full_name_all
    Customer.all.map do |customer|
      customer.first_name << customer.last_name
    end
  end

  def self.find_by_name(name)
    full_name_all.find do |customer_full|
      customer_full == name
    end
  end

  def self.find_all_by_first_name(name)
    Customer.all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    full_name_all
  end

  def add_review(restuarant, content, rating)
    new_review = Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    all_customer_ratings =
    Review.all.select do |review|
      review.customer == self
    end
    all_customer_ratings
  end

  def restaurants
    num_reviews.uniq
  end
end
