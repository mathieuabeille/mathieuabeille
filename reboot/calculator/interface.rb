# 1 premier nombre
# 2 sauvegarder la valeur
# 3 deuxieme nombre
# 4 sauver sa reponse
# 5 definir le type d'operation
# 6 sauvegarder le type d'operation
# 7 compute
# 8 faire une loop

require_relative 'calculator'

while true
p "Entrez un chiffre"
first_number = gets.chomp.to_i

p "Entrez un second chiffre"
second_number = gets.chomp.to_i

p "Entrez une opération +, -, * ou /"
operation = gets.chomp

p calculator(first_number, second_number, operation)

# case operation when "+"

puts  "le resultat de #{first_number} #{operation} #{second_number} est: #{result}"
end
