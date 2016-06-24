require_relative "../lib/FracTicTacToe.rb"

describe "FracTicTacToe" do
	
	it "Initialize ---------" do
		fttt = FracTicTacToe.new
		fttt.get_ttt_main.get_ttt_str.should == "---------"
	end

	it "No winner ---------" do
		fttt = FracTicTacToe.new
		fttt.get_ttt_main.get_winner.should == "-"	
	end

	it "Fractal inicializado" do
		fttt = FracTicTacToe.new
		res = fttt.get_ttt_str 0, 0	
		res.should == '---------'
	end

	it "No winner ttt_00 O--------" do
		fttt = FracTicTacToe.new
		fttt.set_move "X", 0, 0, 0, 0
		fttt.get_ttt_main.get_winner.should == "-"	
	end

	it "WINNER ttt_00 OOO------" do
		fttt = FracTicTacToe.new
		fttt.set_move "X", 0, 0, 0, 0
		fttt.set_move "O", 0, 0, 0, 1
		fttt.set_move "X", 0, 0, 0, 2
		fttt.set_move "O", 0, 0, 1, 0
		fttt.set_move "X", 0, 0, 1, 1
		fttt.set_move "O", 0, 0, 1, 2
		fttt.set_move "O", 0, 0, 2, 0
		fttt.set_move "X", 0, 0, 2, 1
		fttt.set_move "O", 0, 0, 2, 2		
		fttt.get_ttt_str 0, 0
		fttt.get_ttts[0][0].get_winner.should == "-"	
	end



	

end
