#gamestop
#steam
#GOG
#amazon
#independnet_digital

class Distributor

  attr_accessor :game, :platform
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end


  def find_by_name(name) #returns all the games that are from distributor

  end

  def self.all
    @@all
  end

  def get_all_games
    Game.all.select do |game|
      game.distributor == self
    end
  end

  def get_all_platforms
    self.get_all_games.map do |game|
      game.platform
    end
  end

  def self.find_by_name(name)
    self.all.find do |distributor|
      distributor.name == name
    end
  end



end
