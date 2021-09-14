require './game.rb'
require './player.rb'
require './question.rb'

prompt = '> '
puts "Hi, please enter first player name"
puts prompt
player1 = $stdin.gets.chomp

puts "Thank you! Now please enter the second player name"
puts prompt
player2 = $stdin.gets.chomp

p1 = Player.new(player1)
p2 = Player.new(player2)
Game.new(p1, p2)