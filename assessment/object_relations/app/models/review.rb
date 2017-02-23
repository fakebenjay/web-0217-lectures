class Review
  @@all = []

  attr_accessor :name, :restaurant

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
end
