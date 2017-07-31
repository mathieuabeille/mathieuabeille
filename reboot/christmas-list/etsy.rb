# 1. chercher sur etsy
# 2. scrap
# 3. show list
# 4. ask user to pick
# 5. add to our array

require "open-uri"
require "nokogiri"


def zalando_scrap(recherche)
  # 1. get an HTML file thanks to
  file = open("https://www.zalando.fr/catalogue/?q=#{recherche}&qf=1")

  # 2. build a nokogiri document thanks to this
  doc = Nokogiri::HTML(file)
  # 3. search every elements with class card

  zalando = []
  doc.search(".catalogArticlesList_articleName").take(10).each do |card|
    # 4. for each element found, we extract its title and print it
    title = card.text.strip
    zalando << title
  end
  return zalando
end
