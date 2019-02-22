class MacysDeal::Deal

  attr_accessor :name, :price, :promo_t, :url
  @@all = []
  def self.scrape_deals
    @@all << MacysDeal::Scraper.scrape_macys
    @@all
    #binding.pry
  end
  
  def name
    @name = []
  end
  
  def price
    @price = []
  end
  
  def promo_t
    @promo_t = []
  end
  
  def url
    @url = []
  end
end
