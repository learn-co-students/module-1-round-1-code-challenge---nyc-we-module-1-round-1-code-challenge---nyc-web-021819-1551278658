class Customer
  @@all = []

  attr_accessor :first_name, :last_name,:review

  def initialize (first_name, last_name)
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

  def self.find_by_name(name_str) #i change here from name to name_str so its easier to read 
    self.all.select do |customer| customer.full_name.to_s == name_str
    end.first
  end 

  def self.find_all_by_first_name(name)
    self.all.select do |customer|
      customer.first_name == name
    end 
  end 

  def self.all_names
    name_array = []
    self.all.select do |customer|
      name_array << customer.full_name
    end
    name_array
  end 

  def add_review(restaurant, content, rating)
    Customer.new (self,content,rating)
  end 
end
