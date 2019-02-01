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
    @deals.each.with_index(1) do |deal, i|
      puts "#{i}. #{deal.name} - #{deal.price} - #{deal.promo}"
    end

  end

  def menu

    input = nil
    while input != "exit"
      puts "Enter the number(#) for the deal you are interested in or type list to see deals or type exit:"
      input = gets.strip.downcase

      if input.to_i > 0
        the_deal = @deals[input.to_i-1]
        puts "#{the_deal.name} - #{the_deal.price} - #{the_deal.promo}"
      elsif input == "list"
        list_deals
      else
        puts "Incorrect input."
        list_deals
      end
    end
  end

  def goodbye
    puts "Thank you for your support! Check daily for more deals!"
  end
end

  end

  def goodbye
    puts "Thank you for your support! Check daily for more deals!"
  end
end
