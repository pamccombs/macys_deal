#CLI Controller
class MacysDeal::CLI

  def call
    MacysDeal::Scraper.scrape_macys
    list_deals
    menu
  end

  def list_deals
    puts "Brad's Deals:"
    MacysDeal::Deal.all.map.with_index() do |deal, i|
      puts "#{i+1}. #{deal.name}"
    end
  end

  def menu

    input = nil
    while input != "exit"
      puts "\nEnter the number(#) for the deal you are interested in or type list to see deals or type exit:"
      input = gets.strip.downcase

      if input.to_i > 0 && input.to_i <= MacysDeal::Deal.all.length
        the_deal = MacysDeal::Deal.all[input.to_i-1]
        puts "\n#{the_deal.name}"
        puts "\nYou can find this deal here! - #{the_deal.url}"
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
