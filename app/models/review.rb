class Review

    @@all = []

    attr_reader :customer, :restaurant, :rating
    attr_accessor :content

    def initialize(customer, restaurant, rating, content)
        @customer = customer
        @restaurant = restaurant
        self.rating = rating
        @content = content
        @@all.push(self)
    end

    def self.all
        @@all
    end

    def rating=(rating)
        if rating > 5 or rating < 1
            puts "Rating can't be higher than 5 or lower than 1"
        else
            @rating = rating
        end
    end

end
