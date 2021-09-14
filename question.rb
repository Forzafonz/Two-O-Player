class Question
  attr_accessor :player

  def initialize(player)
    self.player = player
    number_1 = rand(1..20)
    number_2 = rand(1..20)
    answer = number_1 + number_2
    puts "#{player.name}: What does #{number_1} + #{number_2} equal?"
    player_answer = $stdin.gets.chomp
    self.check_answer(player_answer, answer)
  end

  def check_answer(player_answer, answer)
    if (player_answer.to_i != answer.to_i)
      puts "#{self.player.name} Seriously? No!"
      self.player.lost?()
    else 
      puts "#{self.player.name} Yes! You are correct!"
    end
  end

end