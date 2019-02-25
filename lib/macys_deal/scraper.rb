class MacysDeal::Scraper

  def self.scrape_macys
    doc = Nokogiri::HTML(open("https://www.macys.com/shop/coupons-deals?cm_sp=navigation-_-top_nav-_-deals&lid=glbtopnav_deals-us")) do |config|
      config.strict.noblanks
    end

    deal = MacysDeal::Deal.new
  
    deal.name = doc.search('h2.promo-header-text').map(&:text)
    deal.price = doc.search('h2.promo-sub-header-text').map(&:text)
    deal.promo_t = doc.search('div.promo-code').map(&:text)
    deal.url = url = doc.search('div.promo-footer').search('a').map {|attrs| attrs.attr("href")} 
    
    deal
  end
end
