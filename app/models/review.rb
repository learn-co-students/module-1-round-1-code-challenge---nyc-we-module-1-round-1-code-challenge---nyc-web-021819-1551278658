class Review
    @@all = []

    attr_accessor :customer,:restaurant 

    def initialize(customer,restaurant)
        @customer = customer
        @restaurant = restaurant
        @@all << self
    end 
  
    def self.all
        @@all
    end 


    def rating
        
    end 

    def content

    end 


end

