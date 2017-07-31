# interface.rb
require_relative 'fonction'
require_relative 'etsy'

# Pseudo-code:
# 1. Welcome
puts "Bienvenue dans le royaume du père noël ! "

# 2. Display menu (list / add / delete / mark )
puts "Quel action veux-tu faire sur ta liste? "
puts "afficher | ajouter | supprimer | envoyer | marquer | idea"
puts "-----------action--------------"

# 3. Perform the ri ght action
action = ""
item = []

until action=="envoyer"
puts "Que veux-tu faire sur ta liste? :"
action = gets.chomp
  if action=="afficher"
    list_item(item)
  elsif action=="ajouter"
    add_item(item)
  elsif action=="supprimer"
    delete_item(item)
  elsif action=="idea"
    # faire la méthode dans fonction...
    zalando = zalando_scrap("stan smith")
    zalando.each_with_index { |x, index| puts "#{index + 1 }. #{x}" }
    puts "tu veux ajouter lequel? (numéro)"
    index = gets.chomp.to_i - 1
    zalando[index]
  elsif action=="marquer"
    mark_item(item)
  elsif action=="envoyer"
    p "Ta liste a été envoyée au père noël."
  else
    error_message
  end
end

