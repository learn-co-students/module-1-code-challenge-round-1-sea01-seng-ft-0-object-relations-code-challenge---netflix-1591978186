class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

def reviews
  Review.all.find_all {|reviews| reviews.movie == self}
end

def average_rating
  total = Review.all.collect {|reviews| reviews.rating}
  total.sum / total.length
end
end