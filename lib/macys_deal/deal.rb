class MacysDeal::Deal

  attr_accessor :name, :price, :promo_t, :url

#inefficient  - should just be self.scrape_deals

  #def self.today
    #self.scrape_deals
  #end

  def self.scrape_deals
    deals = []
    deals << MacysDeal::Scraper.scrape_macys
    deals
  end
end
