class TicTacToe
	def initialize
		@ttt_str="---------"	
		@none = "-"
		@circulo = "O"
		@cruz = "X"
		@winner = @none 
	end
		 
	def get_ttt_str
		return @ttt_str			
	end

	def get_winner
		@winner = validate 
		return @winner
	end

	def set_ttt_str ttt
		@ttt_str = ttt
	end

	def validate 
		t=@ttt_str
		if t[0]==t[3] and t[0]==t[6] and t[0]!=@none
			return t[0]
		end
		if t[1]==t[4] and t[1]==t[7] and t[1]!=@none
			return t[1]
		end
		if t[2]==t[5] and t[2]==t[8] and t[2]!=@none
			return t[2]
		end
		if t[0]==t[1] and t[0]==t[2] and t[0]!=@none
			return t[0]
		end
		if t[3]==t[4] and t[3]==t[5] and t[3]!=@none
			return t[3]
		end
		if t[6]==t[7] and t[6]==t[8] and t[6]!=@none
			return t[6]
		end
		if t[0]==t[4] and t[0]==t[8] and t[0]!=@none
			return t[0]
		end
		if t[2]==t[4] and t[2]==t[6] and t[2]!=@none
			return t[2]
		end
		return @none
	end
end
