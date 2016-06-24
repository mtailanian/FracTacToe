class FracTicTacToe

	def initialize
		@ttt_main = TicTacToe.new
		@ttts = []
		for i in 0..2 do
			aux = []
			for j in 0..2 do
				ttt = TicTacToe.new
				aux.push ttt
			end
			@ttts.push aux
		end
	end

	def get_ttt_main
		return @ttt_main
	end

	def get_ttts
		return @ttts
	end

	def get_ttt_str x, y
		return @ttts[x][y].get_ttt_str
	end

	def set_move team, x, y, z, t
		@ttts[x][y].set_move team, z, t
	end
end
