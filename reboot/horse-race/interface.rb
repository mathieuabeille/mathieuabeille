# Pseudo-code:
# 1. Print welcome
p "Bienvenue Turfer"
# 2. Get horses
cheval_list = [ "Le cheval qui gagne jamais", "Le cheval qui plait aux jumens", "Le cheval suce boule", "Le cheval moche de la bande", "Le cheval nihiliste", "Marion Maréchal Le Pen"]
p " participants : #{cheval_list.join(', ')}?"

answer = "y"
while answer == "y" || answer == "yes"
# 3. Get user's bet
p "ton cheval connard?"
mon_cheval = gets.chomp
# 4. Run the race
vainqueur = cheval_list.sample
p "#{vainqueur} gagne la course."
# 5. Print results
if vainqueur == mon_cheval
  p "tu gagnes"
else
  p "tu perds"
end

puts "tu veux encore jouer trou de balles? [Yes or No]"
exec "tu veux encore jouer trou de balles? [Yes or No]"

answer = gets.chomp

end
