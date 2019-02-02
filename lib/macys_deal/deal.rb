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
    name = doc.search("h2.promo-header-text").text
    price = doc.search("h2.promo-sub-header-text").text
    promo_t = doc.search("div.promo-code").text
    promo_f = doc.search("div.no-promo-code").text
    binding.pry
    #name = <h2 class="promo-header-text ">Super Weekend Sale!</h2>

      #"Super Weekend Sale!HosieryLINGERIELINGERIELINGERIELINGERIEMaternityHOISERYLINGERIELINGERIESports Fan Shop by LIDSMEN'S SOCKSSports Fan Shop by LIDSRIEDELGourmet
      #Food & GiftsHomeHomeHomeHomeHome"
      
    #price = <h2 class="promo-sub-header-text ">Extra 25%, 15% or 10% off!</h2>

      #"Extra 25%, 15% or 10% off!3 for $30 Hanes Perfect Nudes SheersFree INC flip flop with $50+ regular priced purchase of INC Lingerie, Pajamas, or HosieryFree Key
      #Chain with $40+ b.tempt'd regular price purchaseFree Drawstring Bag with $40 Jockey Sport purchase. Buy 1, Get 2nd 50% Off INC BrasDestination Maternity Buy One Ful
      #l Price Item, Get Second 50% Off Select MerchandiseBuy 1, Get 2nd 50% Off HUE Original Denim Leggings $6.99 each OR  5 for $30 PantiesFree Breast Cancer Awareness P
      #in with Purchase of an Awareness Bra40% off Markdowns2 for $16.99Buy 1, Get 2nd 50% Off Select StylesBUY 1, GET 2ND 50% OFFBonus $19.95 Valentine's Day Bear with $2
      #5 Godiva PurchaseExtra 15% off Small AppliancesExtra 20% off Small AppliancesExtra 20% off Floor CareExtra 15% off Home EnvironmentExtra 20% off Garment Care"

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
