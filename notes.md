How to build a CLI gem

1. Plan your gem, imagine your interface!

2. Start with your project structure - google!

3. Start with an entry point - the file run

4. Force that to build the CLI interface

5. Stub out the interface

6. Start making things real

7. Discover objects

8. Program


- a CLI with macys deal tab. a list of all deals

user types macys_deal

shows list of all current macy's deals:


1. Super Weekend Sale - Extra 25%, 15% or 10% off! - Promo code: YAY

2. Hosiery - 3 for $30 Hanes Perfect Nudes Sheers - No promo code

3. Sports Fan Shop by LIDS - 40% off Markdowns - No promo code



are you interested?

- shows actual deal (price, etc.)


deal.rb notes

titles = doc.css('h2.promo-header-text').text

titles = doc.search('h2.promo-header-text').map { |entry| entry.at('h2')}

titles = doc.xpath('h2.promo-header-text').collect { |entry| entry.at('title')}

correct --> title = doc.search('h2.promo-header-text').map(&:text)


working --> url = doc.at('div.promo-footer').search('a').first.attr('href')

better --> url = doc.search('div.promo-footer').search('a').map {|attrs| attrs.attr("href")}

good --> url = doc.search('div.promo-footer').search('a').each do |attrs|
  if attrs.attr("href") == nil || attrs.attr("href") == "#"
  next
  else
  good_url << attrs.attr("href")
  end
  end


testing

frowns = ["1", nil, "#", "2", "#", nil, "3"]

good = []

frowns.each do |frown|
  if frown == nil || frown == "#"
  next
  else
  good << frown
  end
end
