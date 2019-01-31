#CLI Controller
class MacysDeal::CLI

  def call
    puts "Macy's Deals:"
    list_deals
  end

  def list_deals

    # here doc - http://blog.jayfields.com/2006/12/ruby-multiline-strings-here-doc-or.html

    puts <<-DOC

    1. Super Weekend Sale - Extra 25%, 15% or 10% off! - Promo code: YAY

    2. Hosiery - 3 for $30 Hanes Perfect Nudes Sheers - No promo code

    3. Sports Fan Shop by LIDS - 40% off Markdowns - No promo code

    DOC

  end
end
