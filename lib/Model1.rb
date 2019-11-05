class Actor

  attr_accessor :age
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age

    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    first_name + " " + last_name
  end

  def actor_roles
    Role.all.select do |role|
      role.actor == self
    end
  end

  def movies
    actor_roles.map do |role|
      role.movie
    end
  end

  def credits
    credits = {}
    actor_roles.each do |role|
      credits[role.movie.title] = role.character_name
    end
    credits
  end

  def self.find_by_full_name(full_name)
    first_name = full_name.split.first
    last_name = full_name.split.last
    self.all.find do |actor|
      actor.first_name == first_name && actor.last_name == last_name
    end
  end

  def self.no_younger_than(age)
    self.all.select do |actor|
      actor.age >= age
    end
  end

end
