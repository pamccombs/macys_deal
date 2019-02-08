class MacysDeal::Scraper

  attr_accessor :name, :price, :promo_t, :url

  def self.scrape_macys
    doc = Nokogiri::HTML(open("https://www.macys.com/shop/coupons-deals?cm_sp=navigation-_-top_nav-_-deals&lid=glbtopnav_deals-us")) do |config|
      config.strict.noblanks
    end

    deal = self.new
    deal.name = doc.search('h2.promo-header-text').map(&:text)
    deal.price = doc.search('h2.promo-sub-header-text').map(&:text)
    deal.promo_t = doc.search('div.promo-code').map(&:text)
    @good_url = []
    deal.url = doc.search('div.promo-footer').search('a').map do |attrs|
      if attrs.attr("href") == nil || attrs.attr("href") == "#"
        next
        else
        @good_url << attrs.attr("href")
      end
      @good_url
    end
    deal
  end
end
