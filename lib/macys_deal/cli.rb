#CLI Controller
class MacysDeal::CLI

  def call
    list_deals
    menu
    goodbye
  end

  def list_deals

    # here doc - http://blog.jayfields.com/2006/12/ruby-multiline-strings-here-doc-or.html
    puts "Macy's Deals:"
    puts <<-DOC.gsub /^\s*/, ''

    1. Super Weekend Sale - Extra 25%, 15% or 10% off! - Promo code: YAY

    2. Hosiery - 3 for $30 Hanes Perfect Nudes Sheers - No promo code

    3. Sports Fan Shop by LIDS - 40% off Markdowns - No promo code

    DOC

  end

  def menu
    puts "Enter the number(#) for the deal you are interested in or type exit to enter:"
    input = nil
    while input != "exit"
      input = gets.strip.downcase
      case input
      when "1"
        puts "More info on deal 1..."
      when "2"
        puts "More info on deal 2..."
      when "3"
        puts "More info on deal 3..."
      end
    end
  end

  def goodbye
    puts "Thank you for your support! Check daily for more deals!"
  end
end
