class MacysDeal::Deal

  attr_accessor :name, :url
  @@all = []
  
  def initialize
    @@all << self
  end
  
  def self.all
    @@all
     binding.pry
  end
end
