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
    self.all.find do |names|
      names.first_name == name && names.last_name == name
    end
  end

  def self.find_all_by_first_name(name)
    self.all.select do |names|
      names.first_name == name
  end
end

def self.all_names
  full_name.all.each do |names|
    names
  end
end

def add_review(restaurant, content, rating)
 Review.new(self, restaurant, content, rating )
end

def num_reviews
  Review.all.map do |reviews|
    reviews.customer == self
  end
end

def restaurants
  Review.all.select do |reviews|
    reviews.customer == self
  end.uniq
end

end
