class MacysDeal::Deal

  attr_accessor :name, :price, :promo_t, :url
  @@all = []
  def self.scrape_deals
    @deal_filter << MacysDeal::Scraper.scrape_macys
    @deal_filter
    #binding.pry
  end
  
  def self.organize
    #I need name[x], price[x], promo_t[x] to be stored as deal[x]
    
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
