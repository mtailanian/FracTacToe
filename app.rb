require 'sinatra'
require_relative './lib/TicTacToe.rb'

get '/' do
	@@teams = %w{X O}
	@@turn = 0
	@@winner = "-"
	@@pos00 = "-"
	@@pos01 = "-"
	@@pos02 = "-"
	@@pos10 = "-"
	@@pos11 = "-"
	@@pos12 = "-"
	@@pos20 = "-"
	@@pos21 = "-"
	@@pos22 = "-"
	erb:fracTacToe
end

get '/validate' do
	ttt = TicTacToe.new
	ttt.set_ttt_str @@pos00 + @@pos01 + @@pos02 + @@pos10 + @@pos11 + @@pos12 + @@pos20 + @@pos21 + @@pos22
	@@winner = ttt.get_winner
	erb:game_over
end

get '/00' do
	@@turn += 1
	@@pos00 = @@teams[@@turn%2]
	erb:fracTacToe
end
get '/01' do
	@@turn += 1
	@@pos01 = @@teams[@@turn%2]
	erb:fracTacToe
end
get '/02' do
	@@turn += 1
	@@pos02 = @@teams[@@turn%2]
	erb:fracTacToe
end
get '/10' do
	@@turn += 1
	@@pos10 = @@teams[@@turn%2]
	erb:fracTacToe
end
get '/11' do
	@@turn += 1
	@@pos11 = @@teams[@@turn%2]
	erb:fracTacToe
end
get '/12' do
	@@turn += 1
	@@pos12 = @@teams[@@turn%2]
	erb:fracTacToe
end
get '/20' do
	@@turn += 1
	@@pos20 = @@teams[@@turn%2]
	erb:fracTacToe
end
get '/21' do
	@@turn += 1
	@@pos21 = @@teams[@@turn%2]
	erb:fracTacToe
end
get '/22' do
	@@turn += 1
	@@pos22 = @@teams[@@turn%2]
	erb:fracTacToe
end
