require_relative "../lib/FracTicTacToe.rb"

describe "FracTicTacToe" do
	
	it "Initialize ---------" do
		fttt = FracTicTacToe.new
		fttt.ttt_main.get_ttt_str.should == "---------"
	end

	it "No winner ---------" do
		fttt = FracTicTacToe.new
		fttt.ttt_main.get_winner.should == "-"	
	end

	it "No winner ttt_0 O--------" do
		fttt = FracTicTacToe.new
		fttt.ttts.set_ttt_str 0, 0, "O--------"
		fttt.ttt_main.get_winner.should == "-"	
	end

end
