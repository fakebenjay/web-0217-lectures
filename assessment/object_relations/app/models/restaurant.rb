class Restaurant
  @@all = []

  attr_accessor :name, :reviews, :customers

  def initialize(name)
    @name = name
    @customers = []
    @reviews = []
    @@all << self
  end

  def self.find_by_name(name)
    self.all.find {|r| r.name == name}
  end

  def self.all
    @@all
  end

  ##You didn't ask for these
  ##but if you want #reviews or #customers to not be empty...

  def add_review(tktktk, human)
    self.reviews << Review.new(tktktk)
    self.add_customer(human)
  end

  def add_customer(human)
    self.customers << Restaurant.new(human)
  end
end
