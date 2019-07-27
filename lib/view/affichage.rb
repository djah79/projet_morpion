
class Affichage
	def initialize()
	end
	def affiche_result(joeur1_symbole,joueur2_symbole,choice)
		
		s = "  "
		a1 = " "
		a2 = " "
		a3 = " "
		b1 = " "
		b2 = " "
		b3 = " "
		c1 = " "
		c2 = " "
		c3 = " "
		
		for i in 0...choice.length

			if (i%2 == 0)
				case choice[i].to_s.upcase
				when "A1"
					a1 = joeur1_symbole
				when "A2"
					a2 = joeur1_symbole
				when "A3"
					a3 = joeur1_symbole
				when "B1"
					b1 = joeur1_symbole
				when "B2"
					b2 = joeur1_symbole
				when "B3"
					b3 = joeur1_symbole
				when "C1"
					c1 = joeur1_symbole
				when "C2"
					c2 = joeur1_symbole
				when "C3"
					c3 = joeur1_symbole
				else
				end
			else
				case choice[i].to_s.upcase
				when "A1"
					a1 = joueur2_symbole
				when "A2"
					a2 = joueur2_symbole
				when "A3"
					a3 = joueur2_symbole
				when "B1"
					b1 = joueur2_symbole
				when "B2"
					b2 = joueur2_symbole
				when "B3"
					b3 = joueur2_symbole
				when "C1"
					c1 = joueur2_symbole
				when "C2"
					c2 = joueur2_symbole
				when "C3"
					c3 = joueur2_symbole
				else
				end
			end
		end

				
				puts "     1     2     3 "
				puts "#{s}"+"-"*19

				for i in 0...3
				    
					if i==0
						puts "A |  #{a1}  |  #{a2}  |  #{a3}  |"
						puts "#{s}"+"-"*19
					elsif i == 1
						puts "B |  #{b1}  |  #{b2}  |  #{b3}  |"
						puts "#{s}"+"-"*19
					else
						puts "C |  #{c1}  |  #{c2}  |  #{c3}  |"
						puts "#{s}"+"-"*19
					end
				end 

	end
end
