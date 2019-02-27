class Customer
  attr_accessor :first_name, :last_name
  @@all = []

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

  def self.find_by_name(name)
    first_name = name.split[0]
    last_name = name.split[1]

    self.all.find do |customer|
      customer.first_name == first_name && customer.last_name == last_name
    end
  end

  def self.find_all_by_first_name(name)
    self.all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    self.all.map do |customer|
      customer.first_name
    end
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, rating, content)
  end

  def num_reviews
    Review.all.select do |review|
      review.customer == self
    end.count
  end

  def restaurants
    Review.all.map do |review|
      review.restaurant if review.customer == self
    end.uniq.compact
  end
end
