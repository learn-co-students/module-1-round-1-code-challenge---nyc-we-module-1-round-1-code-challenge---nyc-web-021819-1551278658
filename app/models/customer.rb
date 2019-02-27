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
    self.all.find {|customer| "#{customer.first_name} #{customer.last_name}" == name}
  end

  def self.find_all_by_first_name(name)
    self.all.select {|customer| "#{customer.first_name}" == name}
  end

  def self.all_names
    self.all.map {|customer| "#{customer.first_name} #{customer.last_name}"}
  end

  def add_review(restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  end

  def num_reviews
    Review.all.count {|review| review.customer == self}
  end

  def restaurants
    Review.all.map {|review| review.restaurant if review.customer == self}.compact.uniq
  end

end
