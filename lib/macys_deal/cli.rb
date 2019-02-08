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


    @deals = MacysDeal::Deal.today
    @deals2 = []
    @deals.map.with_index() do |deal, i|
      i == 0
      until i == deal.name.length
        @deals2 << deal
      puts "#{i+1}. #{deal.name[i]} - #{deal.price[i]} - #{deal.promo_t[i]}"
      i+=1
      break if i == 25
      end
    end
  end

  def menu

    input = nil
    while input != "exit"
      puts "Enter the number(#) for the deal you are interested in or type list to see deals or type exit:"
      input = gets.strip.downcase

      if input.to_i > 0
        the_deal = @deals2[input.to_i-1]
        puts "#{the_deal.name[input.to_i-1]} - #{the_deal.price[input.to_i-1]} - #{the_deal.promo_t[input.to_i-1]}"
        puts "You can find this deal here! - #{the_deal.url[0][input.to_i-1]}"
        #binding.pry
      elsif input == "list"
        list_deals
      else
        puts "Incorrect input."
        list_deals
        #binding.pry
      end
    end
  end

  def goodbye
    puts "Thank you for your support! Check daily for more deals!"
  end
end
