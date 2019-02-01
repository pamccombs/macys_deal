class MacysDeal::Deal

attr_accessor :name, :price, :promo, :url

  def self.today
    #return many instances of Deal
    self.scrape_deals
  end

  def self.scrape_deals
    deal_1 = self.new
    deal_1.name = "Super Weekend Sale"
    deal_1.price = "Extra 25%, 15% or 10% off!"
    deal_1.promo = true
    deal_1.url = "https://www.macys.com/?lid=shop_now"

    deal_2 = self.new
    deal_2.name = "Hosiery"
    deal_2.price = "3 for $30 Hanes Perfect Nudes Sheers"
    deal_2.promo = false
    deal_2.url = "https://www.macys.com/shop/handbags-accessories/socks-tights/Brand/Hanes?id=40546&lid=shop_now"

    deal_3 = self.new
    deal_3.name = "Sports Fan Shop by LIDS"
    deal_3.price = "40% off Markdowns"
    deal_3.promo = false
    deal_3.url = "https://www.macys.com/shop/sports-fan-shop?id=206490&cm_sp=us_hdr-_-sports-fan-shop-_-225991_40%25-off-dooney-%26-bourke_COL4&lid=shop_now"

    [deal_1, deal_2, deal_3]
  end
end
