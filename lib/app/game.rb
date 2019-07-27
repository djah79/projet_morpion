class Game
	def matyVe(tabjoueur)
		k = 0
		l = 0
		m = 0
		n = 0

		for j in 0 ... tabjoueur.length
			for i in j+1 ... tabjoueur.length
				if (tabjoueur[j][0]==tabjoueur[i][0] )
					for ii in i+1 ...tabjoueur.length
						if(tabjoueur[i][0] == tabjoueur[ii][0])
							k = 1
							break
						end 
					end
				end	
			end	
		end

		for j in 0 ... tabjoueur.length
			for i in j+1 ... tabjoueur.length
				if (tabjoueur[j][1]==tabjoueur[i][1] )
					for ii in i+1 ...tabjoueur.length
						if(tabjoueur[i][1] == tabjoueur[ii][1])
							l = 1
							break
						end 
					end
				end	
			end	
		end

		tabjoueur.each do |c|
			if (c.upcase == "A1" || c.upcase == "B2" || c.upcase =="C3")
								m+=1
			end 
		end

		tabjoueur.each do |c|
			if (c.upcase == "A3" || c.upcase == "B2" || c.upcase =="C1")
				n+=1
			end
		end
	
		if(k == 1 || l == 1 || m == 3 || n == 3)
			return true
		else
			return false
		end
	end


def mach_nul?(tableau)
	 if (tableau.length == 5)
	 	return true
	 else
	 	return false
	 end

end

def end_game(tabjoueur)
	if (matyVe(tabjoueur) == true )
		puts "vous avez gagné"
		return true
	elsif (mach_nul?(tabjoueur)== true)
		puts "mach nul"
		return true
	else
		return false
	end
end 
def quit 
	puts "pour recommencer, tapez sur R et Q pour quitter : "
	touche = gets.chomp
	if touche.upcase == "R"
		return true
	elsif touche.upcase == "Q"
		return false
	else
		puts "pour recommencer, tapez sur R et Q pour quitter : "
		touche = gets.chomp
		return true
	end
end	
end		

