#computer
#xbox
#playstation

class Platform

  attr_reader :name
  attr_accessor :distributor, :game

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def add_new_game(name, distributor, critic_score)
    new_game = Game.new(name, distributor, self, critic_score)
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |platform|
      platform.name == name
    end
  end

  def self.find_or_create_by_name(name)
    return self.find_by_name(name) || Platform.new(name, distributor, self, critic_score)
  end


end
