class Customer

  attr_accessor :first_name, :last_name
  @@all =[]

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
      customer.full_name == full_name
    end
  end

  def self.find_all_by_first_name(first_name)
    self.all.find do |customer|
      customer.first_name == first_name
    end
  end

  def self.all_names
    self.all.each do |customer|
      customer.full_name
    end
  end

  def add_review(restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  end

 #can be used as a helper
  def num_reviews
    Review.all.select do |reviews|
      reviews.customer == self
    end
  end

  def restaurants
    self.num_reviews.map do |reviews|
      reviews.restaurant
    end
  end

end
