class Customer
  @@all = []

  attr_accessor :name, :reviews, :restaurants

  def initialize(name)
    @name = name
    @reviews = []
    @restaurants = []
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find {|c| c.name == name}
  end

  def add_review(tktktk, eating_place)
#     probably also want to pass through customer, and restaurant to review.
    self.reviews << Review.new(tktktk)
    self.add_restaurant(eating_place)
  end

  def add_restaurant(eating_place)
    self.restaurants << Restaurant.new(eating_place)
  end
end


# Customer.new('bob')
  # <>
# customer = customer.add_review('it was good', Restaurant.new)
  # result: a new review tied ot the restaurant, and tied to the customer
