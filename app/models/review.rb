class Review
    attr_accessor :customer, :restaurant, :content, :rating
    @@all = []

    def initialize(customer, restaurant, content, rating)
        self.customer = customer
        self.restaurant = restaurant
        self.content = content
        self.rating = rating
        Review.all << self
    end

    def self.all
        @@all
    end


  
end

