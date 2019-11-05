class Movie

  attr_accessor :title, :year

  @@all = []

  def initialize(title, year)
    @title = title
    @year = year

    @@all << self
  end

  def self.all
    @@all
  end

  def pretty_print
    pretty_string = ""
    @@all.each do |movie|
      pretty_string += "~ #{movie.title} : #{movie.year} ~"
    end
    pretty_string
  end

  def roles
    Role.all.select do |role|
      role.movie == self
    end
  end

  def cast
    roles.map do |role|
      role.actor
    end
  end

  def credits
    credits = {}
    roles.each do |role|
      credits[role.character_name] = role.actor.full_name
    end
    credits
  end

  def self.by_year(year)
    self.all.select do |movie|
      movie.year == year
    end
  end

end
