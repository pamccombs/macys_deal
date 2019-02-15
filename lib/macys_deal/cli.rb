#CLI Controller
class MacysDeal::CLI

  def call
    list_deals
    menu
  end

  def list_deals
    puts "Macy's Deals:"
    @@all = MacysDeal::Deal.scrape_deals
    @deals2 = []
    @@all.map.with_index() do |deal, i|
      i == 0
      until i == @@all.price.length
      puts "#{i+1}. #{deal.name[i]} - #{deal.price[i]} - #{deal.promo_t[i]}"
      i+=1
      break if i == 100
      end
    end
  end

  def menu

    input = nil
    while input != "exit"
      puts "Enter the number(#) for the deal you are interested in or type list to see deals or type exit:"
      input = gets.strip.downcase

      if input.to_i > 0 && input.to_i <= @deals2.length
        the_deal = @deals2[input.to_i-1]
        puts "#{the_deal.name[input.to_i-1]} - #{the_deal.price[input.to_i-1]} - #{the_deal.promo_t[input.to_i-1]}"
        puts "You can find this deal here! - #{the_deal.url[0][input.to_i-1]}"
      elsif input == "list"
        list_deals
      elsif
        input == "exit"
        puts "Thank you for your support! Check daily for more deals!"
        break
      else
        puts "Incorrect input."
        list_deals
      end
    end
  end
end
