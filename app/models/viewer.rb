class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
  
    reviews = Review.all.select {|review| review.viewer == self}
    reviews
    binding.pry
  end
  def reviewed_movies
    review = Review.all.select {|review| review.viewer == self }
    reviews.map {|review| review.movie }
  end
    
  
end
