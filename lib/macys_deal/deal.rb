class MacysDeal::Deal

attr_accessor :name, :price, :promo_t, :url

  def self.today
    #return many instances of Deal
    self.scrape_deals
  end

  def self.scrape_deals
    deals = []

    deals << self.scrape_macys

    deals
  end

  def self.scrape_macys
    doc = Nokogiri::HTML(open("https://www.macys.com/shop/coupons-deals?cm_sp=navigation-_-top_nav-_-deals&lid=glbtopnav_deals-us")) do |config|
      config.strict.noblanks


    end



    deal = self.new
    good_url = []
    deal.name = doc.search('h2.promo-header-text').map(&:text)
    #binding.pry
      #puts "#{i}. #{s_name}"
    deal.price = doc.search('h2.promo-sub-header-text').map(&:text)
        #puts "#{i}. #{s_price}"
    deal.promo_t = doc.search('div.promo-code').map(&:text)
          #puts "#{i}. #{s_promo_t}"

        #puts "#{i}. #{s_name} - #{s_price} - #{s_promo_t}"


    deal.url = doc.search('div.promo-footer').search('a').each do |attrs|
      if attrs.attr("href") == nil || attrs.attr("href") == "#"
      next
      else
      good_url << attrs.attr("href")
      end
      good_url
    end
    deal
  end
end
    #promo_f = doc.search('div.no-promo-code').map(&:text)

    #promo (if true) = <div class="promo-code"> Promo code:  <span class="ispromo-code">YAY</span></div>

      #" Promo code:  YAY"

    #promo (if false) = <div class="no-promo-code">No promo code</div>

      #"No promo codeNo promo codeNo promo codeNo promo codeNo promo codeNo promo codeNo promo codeNo promo codeNo promo codeNo promo codeNo promo codeNo promo codeNo p
      #romo codeNo promo codeNo promo codeNo promo codeNo promo codeNo promo codeNo promo code"
