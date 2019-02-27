class Review

attr_accessor :review, :rate
attr_reader  :customer, :restaurant
  @@all = []

  def initialize(customer, restaurant, rate = nil , review)
    @customer = customer
    @restaurant =restaurant
    @rate = rate.to_i
    @review =review
    @@all << self
  end

  def self.all
    @@all
  end

  def rating
    if self.rate > 5 || self.rate < 1
      self.rate = nil
      "your rating should be a numer from 1 to 5"
    else
       self.rate
    end
  end

  def content
   self.review
  end


end
