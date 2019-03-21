class MacysDeal::Deal

  attr_accessor :name, :price, :url
  @@all = []
  
  def initialize
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  
  #def organize_url
  #  deal.url = doc.search('div.promo-footer').search('a').map do |attrs|
  #    if attrs.attr("href") == nil || attrs.attr("href") == "#"
  #      next
  #      else
  #      @url << attrs.attr("href")
  #    end
  #    @url
  #  end
  #end
end
