require 'sinatra'
require_relative './lib/TicTacToe.rb'
require_relative './lib/FracTicTacToe.rb'
get '/' do
	@@fttt = FracTicTacToe.new
	@@ttt = TicTacToe.new
	@circle=@@ttt.get_circle
	@cross=@@ttt.get_cross
	@@teams = [@circle, @cross]
	@@turn = 0
	@@winner = @@ttt.get_empty

	@@pos = Array.new(3){	Array.new(3) {Array.new(3) {Array.new(3, @@ttt.get_empty)}}}

	erb:fracTacToe
end

def validate
	
	for x in 0..2
		for y in 0..2
			@@fttt.get_ttts[x][y].set_ttt_str @@pos[x][y][0][0] + @@pos[x][y][0][1] + @@pos[x][y][0][2] + @@pos[x][y][1][0] + @@pos[x][y][1][1] + @@pos[x][y][1][2] + @@pos[x][y][2][0]+ @@pos[x][y][2][1]+ @@pos[x][y][2][2]
		end
	end

	@@fttt.update_ttt_main_str
	@@winner = @@fttt.get_ttt_main.get_winner
end

get '/:FposX/:FposY/:posX/:posY' do
	@@turn += 1
	@@pos[params[:FposX].to_i][params[:FposY].to_i][params[:posX].to_i][params[:posY].to_i] = @@teams[@@turn%2]
	validate
	erb :fracTacToe
end
