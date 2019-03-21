class MacysDeal::Scraper

  def self.scrape_macys
    url = "https://www.bradsdeals.com"
    doc = Nokogiri::HTML(open(url)) do |config|
      config.strict.noblanks
    end
    
    deals = doc.search('a.tile-quoted.clearfix')
    
    deals.each do |div|
      @deal = MacysDeal::Deal.new
      @deal.name = div.search('div.deal-title').text.delete!("\n")
      @deal.url = url + div.attributes['href'].value
    end
  end
  @deal
end
