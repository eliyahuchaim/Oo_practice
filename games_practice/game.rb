#the witcher 3
#the last of us
#battlefield 1
#steven sausage roll

class Game

  attr_reader :name, :critic_score, :platform, :distributor

  @@all = []

  def initialize(name, distributor, platform, critic_score)
      @name = name
      @distributor = distributor.class == String ? Distributor.find_or_create_by_name(distributor) : distributor
      @platform = platform.class == String ? Platform.find_or_create_by_name(Platform) : platform
      @critic_score = critic_score
      @@all << self
    end
  end

  def self.all
    @@all
  end


end
