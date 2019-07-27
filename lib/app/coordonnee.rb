class Coordonnee
	attr_accessor :big_coord, :joueur
	def initialize()
	end

	def big_to_small_coord1(big)
		i = 0
		big.each do |c|
			small[i] = c
			i+=2
		end
		return small
	end

	def big_to_small_coord2(big)
		i = 1
		big.each do |c|
			small[i] = c
			i+=2
		end
		return small
	end

	def two_small_to_big(small1,small2)
		big = Array.new()
		j=0
		k=0
		for i in 0..(small1.length + small2.length)
			if (i%2 == 0)
				big[i] = small1[j]
				j+=1 
			else
				big[i] = small2[k]
				k+=1
			end
		end
		return big
	end
end