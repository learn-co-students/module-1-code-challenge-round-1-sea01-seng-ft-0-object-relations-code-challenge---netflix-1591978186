# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


#Movie#initialize(title)

scary_movie = Movie.new("Scary title")
romantic = Movie.new("Romantic title")
comedy = Movie.new("Comedy title")

#Viewer#initialize(username)

april = Viewer.new("April")
john = Viewer.new("John")
bob = Viewer.new("Bob")
jake = Viewer.new("jake")

# Review#initialize(viewer, movie, rating)

r1 = Review.new(april, scary_movie, 5)
r2 = Review.new(john, romantic, 3)
r3 = Review.new(bob, comedy, 5)
r4 = Review.new(jake, comedy, 5)
r5 = Review.new(april, romantic, 2)
r6 = Review.new(april, comedy, 5)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
