class Customer
  attr_accessor :first_name, :last_name
  #create an empty array to store all of our class instances
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    #push all of our class instances into our array
    @@all << self
  end

  #create a class method that returns our array of all class instances
  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  #create a class method that iterates through our array of class instances
  #find the full_name (using our #full_name method) that equals the name passed in
  def self.find_by_name(full_name)
    self.all.find do |customer|
      customer.full_name == full_name
    end
  end

  #similar to above, but we will select all of the customer instances
  #with first_name that equals or name string passed in
  def self.find_all_by_first_name(name)
    self.all.select do |customer|
      customer.first_name == name
    end
  end

  #iterate into our array of all class instances, and push all of the
  #customer full_names (usering our #full_name method) to an array
  def self.all_names
    self.all.map do |customer|
      customer.full_name
    end
  end

  #initial a new class with Class.new and pass through our self (i.e. the
  #customer that we are) and our content and rating
  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  #iterate into our Review class (joiner) and select all of the reviews
  #for which the customer is equal to ourself (this cusomter instance)
  def reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  #use our #reviews method from above and check the length of the array
  #to see how many reviews we wrote
  def num_reviews
    self.reviews.length
  end

  #iterate into our #reviews method (which contains a specific customer's reviews
  #push all of the restaurants into a new array.
  #call .uniq to delete duplicate restaurants
  def restaurants
    self.reviews.map do |review|
      review.restaurant
    end.uniq
  end

end
