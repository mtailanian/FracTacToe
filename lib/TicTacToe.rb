class TicTacToe

	def cross
		return "X"
	end

	def circle
		return "O"
	end

	def empty
		return "-"
	end
	
	def get_cross
		return cross	
	end	

	def get_circle
		return circle	
	end	
	
	def get_empty
		return empty	
	end	

	def initialize
		@ttt_str="---------"	
		@empty = empty 
		@winner = @empty 
		@circle = circle
		@cross = cross
			
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
		if t[0]==t[3] and t[0]==t[6] and t[0]!=empty
			return t[0]
		end
		if t[1]==t[4] and t[1]==t[7] and t[1]!=empty
			return t[1]
		end
		if t[2]==t[5] and t[2]==t[8] and t[2]!=empty
			return t[2]
		end
		if t[0]==t[1] and t[0]==t[2] and t[0]!=empty
			return t[0]
		end
		if t[3]==t[4] and t[3]==t[5] and t[3]!=empty
			return t[3]
		end
		if t[6]==t[7] and t[6]==t[8] and t[6]!=empty
			return t[6]
		end
		if t[0]==t[4] and t[0]==t[8] and t[0]!=empty
			return t[0]
		end
		if t[2]==t[4] and t[2]==t[6] and t[2]!=empty
			return t[2]
		end
		return @empty
	end
end
