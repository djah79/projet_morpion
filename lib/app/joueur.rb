class Joueur
	attr_accessor :name, :symbole, :position_list

	def initialize(name,symbole)
		@name = name
		@symbole = symbole
		@position_list =[]
	end
end
