require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'view/affichage'
require 'app/game'
require 'app/joueur'
require 'app/coordonnee'
loop do
	my_game = Game.new()
	mon_jeu = Affichage.new()
	co = Coordonnee.new()
	puts "-----------------------------------------"
	puts "|     Bienvenue sur 'M O R P I O N'     |"
	puts "|                                       |"
	puts "-----------------------------------------"
	puts "Saisir le nom du player numero 1"
	nom = gets.chomp
	puts "Saisir le symbole du player numero 1"
	symbol = gets.chomp
	player1 = Joueur.new(nom,symbol)
	puts "Saisir le nom du player numero 2"
	nom2 = gets.chomp
	puts "Saisir le symbole du player numero 2"
	symbol2 = gets.chomp
	player2 = Joueur.new(nom2,symbol2)
	puts player1.symbole
	pos_dispo = ["A1", "A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3"]
	  mon_jeu.affiche_result(player1.symbole, player2.symbole, co.two_small_to_big(player1.position_list,player2.position_list))
	while (pos_dispo.length !=0 )
		puts "Les cases encore disponibles sont :"
		puts pos_dispo.join(', ')
		puts "#{player1.name} !!! choisir une de ces positions "
			choice = gets.chomp
		while (!pos_dispo.include?(choice.upcase))
			puts "choix invalidé, reessayez svp :"
			choice = gets.chomp
		end
		player1.position_list << choice.upcase
		pos_dispo.delete(choice.upcase)
		mon_jeu.affiche_result(player1.symbole, player2.symbole, co.two_small_to_big(player1.position_list,player2.position_list))
		if (my_game.matyVe(player1.position_list))
			puts "#{player1.name} a gagné !"
			break
		elsif (my_game.mach_nul?(player1.position_list))
			puts "mach nil"
			break	
		end
		
		puts "Les cases encore disponibles sont :"
		puts pos_dispo.join(', ')
		puts "#{player2.name} !!! choisir une de ces positions "
		choice = gets.chomp
		while (!pos_dispo.include?(choice.upcase))
			puts "choix invalidé, reessayez svp :"
			choice = gets.chomp
		end
		player2.position_list << choice.upcase
		pos_dispo.delete(choice.upcase)
		mon_jeu.affiche_result(player1.symbole, player2.symbole, co.two_small_to_big(player1.position_list,player2.position_list))
		if (my_game.matyVe(player2.position_list))
			puts "#{player2.name} a gagné !"
			break
		end
	end	


	if !my_game.quit
		break
	end
end
# player1.position_list.length >= 3 && 
