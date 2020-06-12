class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def viewers
   
    reviews = Review.all.select {|review|review.movie == self}
    reviews.map {|review| review.viewer }
  end

end
