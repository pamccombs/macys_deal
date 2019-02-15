class MacysDeal::Scraper

  def self.scrape_macys
    doc = Nokogiri::HTML(open("https://www.macys.com/shop/coupons-deals?cm_sp=navigation-_-top_nav-_-deals&lid=glbtopnav_deals-us")) do |config|
      config.strict.noblanks
    end

    deal = MacysDeal::Deal.new
    deal.name = doc.search('h2.promo-header-text').text.each_line do |name|
      name
    end
    deal.price = doc.search('h2.promo-sub-header-text').text.each_line do |price|
      price
    end
    deal.promo_t = doc.search('div.promo-code').text.each_line do |promo|
      promo
    end
    binding.pry
    deal.url = doc.search('div.promo-footer').search('a').map do |attrs|
      if attrs.attr("href") == nil || attrs.attr("href") == "#"
        next
        else
        self.url << attrs.attr("href")
      end
      self.url
    end
    deal
  end
end
