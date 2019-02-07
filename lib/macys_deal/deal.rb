class MacysDeal::Deal

attr_accessor :name, :price, :promo_t, :promo_f, :url

  def self.today
    #return many instances of Deal
    self.scrape_deals
  end

  def self.scrape_deals
    deals = []

    deals << self.scrape_macys
    #scrape macys deals and return deals based on that data
    #extract the properties
    #instantiate a deal
    ##

    [deals]
  end

  def self.scrape_macys
    doc = Nokogiri::HTML(open("https://www.macys.com/shop/coupons-deals?cm_sp=navigation-_-top_nav-_-deals&lid=glbtopnav_deals-us")) do |config|
      config.strict.noblanks
    end
    good_url = []
    #name = doc.search('h2.promo-header-text').map(&:text)
    #price = doc.search('h2.promo-sub-header-text').map(&:text)
    #url = doc.search('div.promo-footer').search('a').each do |attrs|
      #if attrs.attr("href") == nil || attrs.attr("href") == "#"
      #next
      #else
      #good_url << attrs.attr("href")
      #end
      #good_url
    #end


    #promo_t = doc.search('div.promo-code').map(&:text)
    #promo_f = doc.search('div.no-promo-code').map(&:text)
    binding.pry




    #promo (if true) = <div class="promo-code"> Promo code:  <span class="ispromo-code">YAY</span></div>

      #" Promo code:  YAY"

    #promo (if false) = <div class="no-promo-code">No promo code</div>

      #"No promo codeNo promo codeNo promo codeNo promo codeNo promo codeNo promo codeNo promo codeNo promo codeNo promo codeNo promo codeNo promo codeNo promo codeNo p
      #romo codeNo promo codeNo promo codeNo promo codeNo promo codeNo promo codeNo promo code"


  end
end

#to self.scrape_deals

# original url = "https://www.macys.com/shop/coupons-deals?cm_sp=navigation-_-top_nav-_-deals&lid=glbtopnav_deals-us"

#deal_1 = self.new
#deal_1.name = "Super Weekend Sale"
#deal_1.price = "Extra 25%, 15% or 10% off!"
#deal_1.promo = true
#deal_1.url = "https://www.macys.com/?lid=shop_now"
#
#deal_2 = self.new
#deal_2.name = "Hosiery"
#deal_2.price = "3 for $30 Hanes Perfect Nudes Sheers"
#deal_2.promo = false
#deal_2.url = "https://www.macys.com/shop/handbags-accessories/socks-tights/Brand/Hanes?id=40546&lid=shop_now"
#
#deal_3 = self.new
#deal_3.name = "Sports Fan Shop by LIDS"
#deal_3.price = "40% off Markdowns"
#deal_3.promo = false
#deal_3.url = "https://www.macys.com/shop/sports-fan-shop?id=206490&cm_sp=us_hdr-_-sports-fan-shop-_-225991_40%25-off-dooney-%26-bourke_COL4&lid=shop_now"
#
#[deal_1, deal_2, deal_3]
