class MacysDeal::Deal

attr_accessor :name, :price, :promo, :url

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
    doc = Nokogiri::HTML(open("https://www.macys.com/shop/coupons-deals?cm_sp=navigation-_-top_nav-_-deals&lid=glbtopnav_deals-us"))
    title = doc.search("h2.promo-header-text").text
    binding.pry
    #name = <h2 class="promo-header-text ">Super Weekend Sale!</h2>
    #price = <h2 class="promo-sub-header-text ">Extra 25%, 15% or 10% off!</h2>
    #promo (if true) = <div class="promo-code"> Promo code:  <span class="ispromo-code">YAY</span></div>
    #promo (if false) = <div class="no-promo-code">No promo code</div>
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
