class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def self.all
    @@all
  end
  
  def reviews
    Review.all.find_all{|reviews| reviews.viewer == self}
  end


  def reviewed_movies
    reviews.collect {|reviews| reviews.movie}
  end
  end
 end

