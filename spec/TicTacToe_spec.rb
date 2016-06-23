require_relative "../lib/TicTacToe.rb"

describe "TicTacToe" do
	
	it "Initialize ---------" do
		ttt = TicTacToe.new
		ttt.get_ttt_str.should == "---------"
	end

	it "No winner ---------" do
		ttt = TicTacToe.new
		ttt.get_winner.should == "-"	
	end

	it "No winner O--------" do
		ttt = TicTacToe.new
		ttt.set_ttt_str "O--------"
		ttt.get_winner.should == "-"	
	end

	it "No winner OOX------" do
		ttt = TicTacToe.new
		ttt.set_ttt_str "OOX------"
		ttt.get_winner.should == "-"	
	end


	it "WINNER O O--O--O-- 036" do
		ttt = TicTacToe.new
		ttt.set_ttt_str "O--O--O--"
		ttt.get_winner.should == "O"	
	end
	
	it "WINNER O -O--O--O- 147" do
		ttt = TicTacToe.new
		ttt.set_ttt_str "-O--O--O-"
		ttt.get_winner.should == "O"	
	end

	it "WINNER O --O--O--O 258" do
		ttt = TicTacToe.new
		ttt.set_ttt_str "--O--O--O"
		ttt.get_winner.should == "O"	
	end

	it "WINNER O OOO------ 012" do
		ttt = TicTacToe.new
		ttt.set_ttt_str "OOO------"
		ttt.get_winner.should == "O"	
	end

	it "WINNER O ---OOO--- 345" do
		ttt = TicTacToe.new
		ttt.set_ttt_str "---OOO---"
		ttt.get_winner.should == "O"	
	end
	
	it "WINNER O ------OOO 678" do
		ttt = TicTacToe.new
		ttt.set_ttt_str "------OOO"
		ttt.get_winner.should == "O"	
	end

	it "WINNER O O---O---O 048" do
		ttt = TicTacToe.new
		ttt.set_ttt_str "O---O---O"
		ttt.get_winner.should == "O"	
	end


	it "WINNER O --O-O-O-- 246" do
		ttt = TicTacToe.new
		ttt.set_ttt_str "--O-O-O--"
		ttt.get_winner.should == "O"

	end

	
	it "WINNER X XXX------" do
		ttt = TicTacToe.new
		ttt.set_ttt_str "XXX------"
		ttt.get_winner.should == "X"	
	end


end
