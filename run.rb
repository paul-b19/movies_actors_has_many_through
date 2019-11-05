require 'pry'

require_relative "lib/Model1.rb"
require_relative "lib/Model2.rb"
require_relative "lib/Model3.rb"


leo = Actor.new("Leonardo", "DiCaprio", 44)
keanu = Actor.new("Keanu", "Reeves", 55)
uma = Actor.new("Uma", "Thurman", 49)
cameron = Actor.new("Cameron", "Diaz", 47)

gangs = Movie.new("Gangs of New York", 2002)
wolf = Movie.new("The Wolf of Wall Street", 2013)
kill = Movie.new("Kill Bill Vol. 1", 2003)
matrix = Movie.new("The Matrix", 1999)

neo = Role.new(keanu, matrix, "Neo")
amsterdam = Role.new(leo, gangs, "Amsterdam")
broker = Role.new(leo, wolf, "Broker")
girl = Role.new(cameron, gangs, "Girl")
bride = Role.new(uma, kill, "The Bride")


binding.pry
"end"