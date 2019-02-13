class MacysDeal::Deal

  attr_accessor :name, :price, :promo_t, :url
  @@all = []
  def self.scrape_deals
    @@all << MacysDeal::Scraper.scrape_macys
    @@all
    #binding.pry
  end
end
