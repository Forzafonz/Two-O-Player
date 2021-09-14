class Question
  attr_accessor :player

  def initialize(player)
    self.player = player
    number_1 = rand(1..20)
    number_2 = rand(1..20)
    answer = number_1 + number_2
    puts "What does #{number_1} + #{number_2} equal?"
    player_answer = $stdin.gets.chomp
    self.check_answer(player_answer, answer)
  end

  def check_answer(player_answer, answer)
    if (player_answer != answer)
      puts "Seriously? No!"
      self.player.lost?()
    else 
      puts "Yes! You are correct!"
    end
  end

end