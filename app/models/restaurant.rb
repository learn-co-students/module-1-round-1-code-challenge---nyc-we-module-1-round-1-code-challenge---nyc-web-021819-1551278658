class Restaurant
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    Restaurant.all.find {|r| r.name == name}
  end

  def customers
    myreview = Review.all.select {|rv| rv.restaurant == self}
    myreview.map {|rv| rv.customer}
  end

  def average_star_rating
    myreview = Review.all.select {|rv| rv.restaurant == self}
    total = myreview.map {|rv| rv.rate}.sum
    count = myreview.map {|rv| rv.rate}.length
    total.to_f/count.to_f
  end

  def longest_review
    myreview = Review.all.select {|rv| rv.restaurant == self}
    contents = myreview.map {|rv| rv.review}.map {|c| c.length}
    contents.max
  end

end
