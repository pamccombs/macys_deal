class MacysDeal::Deal

  def self.today
    self.scrape_deals
  end

  def self.scrape_deals
    deals = []
    deals << MacysDeal::Scraper.scrape_macys
    deals
  end
end
